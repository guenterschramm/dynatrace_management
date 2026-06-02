from dataclasses import dataclass
import json
import re
from pathlib import Path

import requests
from django.conf import settings
from django.core.cache import cache

try:
    import truststore
except ImportError:  # pragma: no cover
    truststore = None

if truststore is not None:
    truststore.inject_into_ssl()

from .models import AccountUser


class TerraformAccountDataService:
    CACHE_TIMEOUT_SECONDS = 60

    RESOURCE_START_PATTERN = re.compile(
        r'resource\s+"(?P<type>[^"]+)"\s+"(?P<name>[^"]+)"\s*\{',
        re.DOTALL,
    )

    ATTRIBUTE_PATTERN = re.compile(
        r'^\s*(?P<key>[A-Za-z_][A-Za-z0-9_]*)\s*=\s*(?P<value>.+?)\s*$',
        re.MULTILINE,
    )

    UUID_PATTERN = re.compile(r'^[0-9a-fA-F-]{32,36}$')

    def __init__(self, workspace_dir=None):
        root = workspace_dir or Path(settings.DT_TERRAFORM_ROOT) / 'account-management'
        self.workspace_dir = Path(root)

    def load(self):
        result = {
            'users': [],
            'policies': [],
            'boundaries': [],
            'groups': [],
            'roles': [],
            'unlinked_group_bindings': [],
            'source_root': str(self.workspace_dir),
            'resource_count': 0,
        }

        if not self.workspace_dir.exists():
            return result

        cache_key = self._cache_key()
        cached = cache.get(cache_key)
        if cached is not None:
            return cached

        groups_by_id = {}
        group_alias_to_id = {}
        group_uuid_overrides = self._load_group_uuid_overrides()
        user_group_memberships = {}
        fallback_terraform_users = []

        for tf_file in self.workspace_dir.rglob('*.tf'):
            if '.terraform' in tf_file.parts or 'reference' in tf_file.parts:
                continue

            content = tf_file.read_text(encoding='utf-8', errors='ignore')
            for resource in self._extract_resources(content):
                resource_type = resource['type']
                resource_name = resource['name']
                body = resource['body']
                attrs = self._extract_attributes(body)

                details = {
                    'attributes': attrs,
                }

                entry = {
                    'name': attrs.get('name') or resource_name,
                    'resource_name': resource_name,
                    'resource_type': resource_type,
                    'file_path': self._to_display_path(tf_file),
                    'email': attrs.get('email', ''),
                    'id': attrs.get('id', ''),
                    'details': details,
                    'details_json': self._to_pretty_json(details),
                }

                if self._is_group_resource(resource_type):
                    group_permissions = self._extract_group_permissions(body)
                    if group_permissions:
                        entry['permission_count'] = len(group_permissions)
                        details['permissions'] = group_permissions

                    group_user_values = self._normalize_to_list(attrs.get('users'))
                    if group_user_values:
                        details['users'] = group_user_values
                        entry['user_count'] = len(group_user_values)

                    group_id = self._guess_group_id(resource_name, attrs)
                    override_group_id = self._resolve_group_uuid_override(entry, attrs, group_uuid_overrides)
                    if override_group_id:
                        group_id = override_group_id
                    if group_id:
                        groups_by_id[group_id] = {
                            'id': group_id,
                            'name': entry['name'],
                            'resource_name': resource_name,
                            'resource_type': resource_type,
                            'file_path': entry['file_path'],
                            'permissions': group_permissions,
                            'bindings': [],
                        }
                        for alias in self._group_aliases(group_id, entry, attrs):
                            group_alias_to_id[alias] = group_id
                        for user_identifier in group_user_values:
                            key = user_identifier.strip().lower()
                            if not key:
                                continue
                            user_group_memberships.setdefault(key, []).append(group_id)

                if self._is_policy_binding_resource(resource_type):
                    binding_detail = self._extract_policy_binding_details(resource_type, attrs, body)
                    details['binding'] = binding_detail
                    group_id = (binding_detail.get('group') or '').strip().lower()
                    if group_id:
                        group_id = group_alias_to_id.get(group_id, group_id)
                        groups_by_id.setdefault(
                            group_id,
                            {
                                'id': group_id,
                                'name': group_id,
                                'resource_name': group_id,
                                'resource_type': 'dynatrace_iam_group',
                                'file_path': entry['file_path'],
                                'permissions': [],
                                'bindings': [],
                            },
                        )
                        groups_by_id[group_id]['bindings'].append(binding_detail)

                bucket = self._bucket_for_type(resource_type)
                if bucket:
                    result[bucket].append(entry)
                    result['resource_count'] += 1

                if bucket == 'users':
                    fallback_terraform_users.append(entry)

        self._attach_group_details(result['roles'], groups_by_id)
        result['groups'] = [
            role
            for role in result['roles']
            if self._is_group_resource(role.get('resource_type', ''))
        ]
        result['unlinked_group_bindings'] = self._collect_unlinked_group_bindings(result['groups'], groups_by_id)
        for group in result['groups']:
            group['unlinked_binding_count'] = len(result['unlinked_group_bindings'])
        result['users'] = self._build_users(groups_by_id, user_group_memberships, fallback_terraform_users)

        for key in ('users', 'policies', 'boundaries', 'groups', 'roles'):
            result[key].sort(key=lambda item: (item.get('name') or '').lower())

        cache.set(cache_key, result, timeout=self.CACHE_TIMEOUT_SECONDS)
        return result

    def _cache_key(self):
        tf_count = 0
        latest_tf_mtime = 0

        for tf_file in self.workspace_dir.rglob('*.tf'):
            if '.terraform' in tf_file.parts or 'reference' in tf_file.parts:
                continue
            tf_count += 1
            try:
                mtime = tf_file.stat().st_mtime_ns
            except OSError:
                continue
            if mtime > latest_tf_mtime:
                latest_tf_mtime = mtime

        latest_user_update = 0
        try:
            latest = AccountUser.objects.order_by('-updated_at').values_list('updated_at', flat=True).first()
            if latest is not None:
                latest_user_update = int(latest.timestamp())
        except Exception:
            latest_user_update = 0

        return (
            'account_tf_data:'
            f'{self.workspace_dir}:'
            f'{tf_count}:{latest_tf_mtime}:'
            f'{latest_user_update}'
        )

    def _extract_resources(self, content):
        resources = []
        for match in self.RESOURCE_START_PATTERN.finditer(content):
            start = match.end() - 1
            end = self._find_block_end(content, start)
            if end <= start:
                continue
            body = content[start + 1:end].strip()
            resources.append(
                {
                    'type': match.group('type'),
                    'name': match.group('name'),
                    'body': body,
                }
            )
        return resources

    def _find_block_end(self, text, open_brace_index):
        depth = 0
        for index in range(open_brace_index, len(text)):
            char = text[index]
            if char == '{':
                depth += 1
            elif char == '}':
                depth -= 1
                if depth == 0:
                    return index
        return -1

    def _extract_attributes(self, body):
        attributes = {}
        lines = body.splitlines()
        idx = 0
        depth = 0
        while idx < len(lines):
            line = lines[idx]
            if depth == 0:
                match = re.match(r'^\s*(?P<key>[A-Za-z_][A-Za-z0-9_]*)\s*=\s*(?P<value>.+?)\s*$', line)
                if match:
                    key = match.group('key')
                    value = match.group('value').strip()

                    if value.startswith('<<'):
                        marker = value[2:].strip('-~').strip()
                        marker = marker or 'EOT'
                        collected = []
                        idx += 1
                        while idx < len(lines):
                            if lines[idx].strip() == marker:
                                break
                            collected.append(lines[idx])
                            idx += 1
                        attributes[key] = '\n'.join(collected).strip()
                        idx += 1
                        continue

                    if value.startswith('[') and not value.endswith(']'):
                        collected = [value]
                        idx += 1
                        while idx < len(lines):
                            collected.append(lines[idx].strip())
                            if lines[idx].strip().endswith(']'):
                                break
                            idx += 1
                        value = ' '.join(collected)

                    attributes[key] = self._parse_attribute_value(value)

            depth += line.count('{') - line.count('}')
            if depth < 0:
                depth = 0

            idx += 1

        return attributes

    def _parse_attribute_value(self, value):
        value = value.strip().rstrip(',')
        if value.startswith('"') and value.endswith('"') and len(value) >= 2:
            return value[1:-1]
        if value.startswith('[') and value.endswith(']'):
            return re.findall(r'"([^"]+)"', value)
        if value.startswith('{') and value.endswith('}'):
            return value
        return value

    def _extract_group_permissions(self, body):
        permissions = []
        for permission_block in self._extract_named_blocks(body, 'permission'):
            permission_attrs = self._extract_attributes(permission_block)
            if permission_attrs:
                permissions.append(permission_attrs)

        if permissions:
            return permissions

        for permissions_block in self._extract_named_blocks(body, 'permissions'):
            for permission_block in self._extract_named_blocks(permissions_block, 'permission'):
                permission_attrs = self._extract_attributes(permission_block)
                if permission_attrs:
                    permissions.append(permission_attrs)
        return permissions

    def _extract_named_blocks(self, text, block_name):
        blocks = []
        pattern = re.compile(rf'{block_name}\s*\{{')
        for match in pattern.finditer(text):
            start = match.end() - 1
            end = self._find_block_end(text, start)
            if end <= start:
                continue
            blocks.append(text[start + 1:end].strip())
        return blocks

    def _extract_policy_binding_details(self, resource_type, attrs, body):
        details = {
            'group': attrs.get('group', ''),
            'environment': attrs.get('environment', ''),
            'account': attrs.get('account', ''),
            'resource_type': resource_type,
            'binding_id': attrs.get('group', ''),
        }

        assignments = []
        if resource_type.endswith('_v2'):
            policies = []
            for policy_block in self._extract_named_blocks(body, 'policy'):
                policy_attrs = self._extract_attributes(policy_block)
                if policy_attrs:
                    policy_attrs['boundaries'] = self._normalize_to_list(policy_attrs.get('boundaries'))
                    policies.append(policy_attrs)
                    assignments.append(self._policy_assignment_from_encoded(policy_attrs.get('id', ''), policy_attrs.get('boundaries')))
            details['policies'] = policies
        else:
            encoded_policies = self._normalize_to_list(attrs.get('policies'))
            details['policies'] = encoded_policies
            assignments = [self._policy_assignment_from_encoded(encoded_id, []) for encoded_id in encoded_policies]

        details['assignments'] = [item for item in assignments if item]
        details['assignment_count'] = len(details['assignments'])

        return details

    def _policy_assignment_from_encoded(self, encoded_value, boundaries):
        encoded_value = str(encoded_value or '').strip()
        if not encoded_value:
            return None
        parts = encoded_value.split('#-#')
        policy_id = parts[0] if parts else encoded_value
        scope_type = parts[1] if len(parts) > 1 else ''
        scope = parts[2] if len(parts) > 2 else ''
        return {
            'encoded': encoded_value,
            'policy_id': policy_id,
            'scope_type': scope_type,
            'scope': scope,
            'boundaries': self._normalize_to_list(boundaries),
        }

    def _normalize_to_list(self, value):
        if value is None:
            return []
        if isinstance(value, list):
            return [item for item in value if item]
        if isinstance(value, str):
            trimmed = value.strip()
            if trimmed.startswith('[') and trimmed.endswith(']'):
                return re.findall(r'"([^"]+)"', trimmed)
            if trimmed:
                return [trimmed]
        return []

    def _guess_group_id(self, resource_name, attrs):
        if attrs.get('id'):
            return str(attrs['id']).strip().lower()
        candidate = str(resource_name).lstrip('_').strip().lower()
        if self.UUID_PATTERN.match(candidate):
            return candidate
        return candidate

    def _attach_group_details(self, roles, groups_by_id):
        for role in roles:
            if not self._is_group_resource(role.get('resource_type', '')):
                continue
            group_id = self._guess_group_id(role.get('resource_name', ''), role.get('details', {}).get('attributes', {}))
            group = groups_by_id.get(group_id)
            if not group:
                continue
            assignments = []
            for binding in group.get('bindings', []):
                assignments.extend(binding.get('assignments', []))
            role['binding_count'] = len(group.get('bindings', []))
            role['assignment_count'] = len(assignments)
            role['group_id'] = group_id
            role['details'].setdefault('bindings', group.get('bindings', []))
            role['details']['policy_assignments'] = assignments
            role['details_json'] = self._to_pretty_json(role['details'])

    def _group_aliases(self, group_id, entry, attrs):
        aliases = {str(group_id).strip().lower()}
        for value in (
            entry.get('resource_name'),
            str(entry.get('resource_name', '')).lstrip('_'),
            entry.get('name'),
            attrs.get('id'),
        ):
            text = str(value or '').strip().lower()
            if text:
                aliases.add(text)
        return aliases

    def _load_group_uuid_overrides(self):
        mapping_file = self.workspace_dir / 'modules' / 'iam_group' / 'group_id_map.json'
        if not mapping_file.exists():
            return {}
        try:
            payload = json.loads(mapping_file.read_text(encoding='utf-8'))
        except Exception:
            return {}

        resolved = {}
        if isinstance(payload, dict):
            for raw_key, raw_value in payload.items():
                key = str(raw_key or '').strip().lower()
                value = str(raw_value or '').strip().lower()
                if key and value:
                    resolved[key] = value
        return resolved

    def _resolve_group_uuid_override(self, entry, attrs, overrides):
        if not overrides:
            return ''
        candidates = [
            entry.get('name'),
            entry.get('resource_name'),
            str(entry.get('resource_name', '')).lstrip('_'),
            attrs.get('id'),
        ]
        for candidate in candidates:
            key = str(candidate or '').strip().lower()
            if key and key in overrides:
                return overrides[key]
        return ''

    def _collect_unlinked_group_bindings(self, groups, groups_by_id):
        linked_ids = {
            str(group.get('group_id') or '').strip().lower()
            for group in groups
            if group.get('group_id')
        }
        unlinked = []
        for group_id, group_data in groups_by_id.items():
            if group_id in linked_ids:
                continue
            for binding in group_data.get('bindings', []):
                unlinked.append(
                    {
                        'group_id': group_id,
                        'resource_type': binding.get('resource_type', ''),
                        'environment': binding.get('environment', ''),
                        'assignment_count': binding.get('assignment_count', 0),
                    }
                )
        return unlinked

    def _build_users(self, groups_by_id, user_group_memberships, fallback_terraform_users):
        users = []
        index = {}

        try:
            account_users = list(AccountUser.objects.all())
        except Exception:
            account_users = []

        default_group_ids = self._default_group_ids(groups_by_id)

        for account_user in account_users:
            user_uuid = (account_user.user_uuid or '').strip()
            email = (account_user.email or '').strip()
            full_name = (account_user.full_name or '').strip()

            group_ids = set(default_group_ids)
            if user_uuid:
                group_ids.update(user_group_memberships.get(user_uuid.lower(), []))
            if email:
                group_ids.update(user_group_memberships.get(email.lower(), []))

            groups = self._group_details_for_user(group_ids, groups_by_id)
            entry = {
                'name': full_name or account_user.first_name or email or user_uuid,
                'resource_name': user_uuid or email,
                'resource_type': 'dynatrace_account_user',
                'file_path': 'local-db',
                'email': email,
                'id': user_uuid,
                'groups': groups,
                'group_count': len(groups),
                'source': 'iam-sync',
                'details': {
                    'status': account_user.status,
                    'user_type': account_user.user_type,
                    'groups': groups,
                },
            }
            entry['details_json'] = self._to_pretty_json(entry['details'])
            users.append(entry)

            if user_uuid:
                index[user_uuid.lower()] = entry
            if email:
                index[email.lower()] = entry

        for user in fallback_terraform_users:
            user_key = ((user.get('id') or '').strip() or (user.get('email') or '').strip()).lower()
            if not user_key or user_key in index:
                continue
            user.setdefault('groups', [])
            user.setdefault('group_count', 0)
            user['source'] = 'terraform'
            users.append(user)

        return users

    def _default_group_ids(self, groups_by_id):
        defaults = []
        for group_id, group in groups_by_id.items():
            name = (group.get('name') or '').lower()
            if 'all users' in name or 'all_user' in name:
                defaults.append(group_id)
        return defaults

    def _group_details_for_user(self, group_ids, groups_by_id):
        groups = []
        for group_id in sorted(group_ids):
            group = groups_by_id.get(group_id)
            if not group:
                continue
            groups.append(
                {
                    'id': group['id'],
                    'name': group.get('name') or group['id'],
                    'binding_count': len(group.get('bindings', [])),
                    'permission_count': len(group.get('permissions', [])),
                }
            )
        return groups

    def _to_pretty_json(self, value):
        return json.dumps(value, indent=2, ensure_ascii=False)

    def _is_group_resource(self, resource_type):
        return 'group' in resource_type.lower()

    def _is_policy_binding_resource(self, resource_type):
        lower = resource_type.lower()
        return 'policy_bindings' in lower

    def _bucket_for_type(self, resource_type):
        lower = resource_type.lower()
        if 'user' in lower:
            return 'users'
        if 'boundary' in lower:
            return 'boundaries'
        if 'policy' in lower and 'binding' not in lower:
            return 'policies'
        if any(marker in lower for marker in ('role', 'group', 'binding', 'permission')):
            return 'roles'
        return None

    def _to_display_path(self, path_obj):
        try:
            return str(path_obj.relative_to(settings.BASE_DIR)).replace('\\', '/')
        except Exception:
            return str(path_obj).replace('\\', '/')


@dataclass
class DynatraceAccountClient:
    account_id: str
    client_id: str
    client_secret: str
    api_url: str
    oauth_url: str
    oauth_scope: str
    verify: bool | str

    @classmethod
    def from_settings(cls):
        config = settings.DT_ACCOUNT_CONFIG
        return cls(
            account_id=config['account_id'],
            client_id=config['client_id'],
            client_secret=config['client_secret'],
            api_url=config['api_url'].rstrip('/'),
            oauth_url=settings.DT_ACCOUNT_OAUTH_URL,
            oauth_scope=settings.DT_ACCOUNT_OAUTH_SCOPE,
            verify=settings.DT_ACCOUNT_CA_BUNDLE or settings.DT_ACCOUNT_SSL_VERIFY,
        )

    def get_access_token(self):
        response = requests.post(
            self.oauth_url,
            data={
                'grant_type': 'client_credentials',
                'scope': self.oauth_scope,
            },
            auth=(self.client_id, self.client_secret),
            verify=self.verify,
            timeout=30,
        )
        response.raise_for_status()
        payload = response.json()
        return payload['access_token']

    def list_users(self):
        token = self.get_access_token()
        response = requests.get(
            f'{self.api_url}/iam/v1/accounts/{self.account_id}/users',
            headers={
                'Authorization': f'Bearer {token}',
                'Accept': 'application/json',
            },
            verify=self.verify,
            timeout=30,
        )
        response.raise_for_status()
        payload = response.json()
        if isinstance(payload, dict):
            return payload.get('items', payload.get('users', []))
        return payload


class DynatraceAccountSyncService:
    def __init__(self, client=None):
        self.client = client or DynatraceAccountClient.from_settings()

    def sync_users(self):
        created = 0
        updated = 0

        for item in self.client.list_users():
            user_uuid = item.get('uuid') or item.get('uid') or item.get('id') or item.get('userUuid')
            email = item.get('email') or item.get('userName') or ''
            first_name = item.get('firstName') or item.get('name') or ''
            last_name = item.get('lastName') or item.get('surname') or ''
            full_name = ' '.join(part for part in [first_name, last_name] if part)
            status = item.get('status') or item.get('userStatus') or ''
            user_type = item.get('userType') or item.get('type') or ''

            if not user_uuid:
                continue

            _, was_created = AccountUser.objects.update_or_create(
                user_uuid=user_uuid,
                defaults={
                    'email': email,
                    'first_name': first_name,
                    'last_name': last_name,
                    'full_name': full_name,
                    'status': status,
                    'user_type': user_type,
                    'raw_payload': item,
                },
            )
            if was_created:
                created += 1
            else:
                updated += 1

        return {
            'created': created,
            'updated': updated,
        }