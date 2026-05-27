from dataclasses import dataclass
import re
from pathlib import Path

import requests
from django.conf import settings

try:
    import truststore
except ImportError:  # pragma: no cover
    truststore = None

if truststore is not None:
    truststore.inject_into_ssl()

from .models import AccountUser


class TerraformAccountDataService:
    RESOURCE_PATTERN = re.compile(
        r'resource\s+"(?P<type>[^"]+)"\s+"(?P<name>[^"]+)"\s*\{(?P<body>.*?)\n\}',
        re.DOTALL,
    )

    ATTRIBUTE_PATTERN = re.compile(
        r'^\s*(?P<key>[A-Za-z_][A-Za-z0-9_]*)\s*=\s*(?P<value>.+?)\s*$',
        re.MULTILINE,
    )

    def __init__(self, workspace_dir=None):
        root = workspace_dir or Path(settings.DT_TERRAFORM_ROOT) / 'account-management'
        self.workspace_dir = Path(root)

    def load(self):
        result = {
            'users': [],
            'policies': [],
            'boundaries': [],
            'roles': [],
            'source_root': str(self.workspace_dir),
            'resource_count': 0,
        }

        if not self.workspace_dir.exists():
            return result

        for tf_file in self.workspace_dir.rglob('*.tf'):
            if '.terraform' in tf_file.parts or 'reference' in tf_file.parts:
                continue

            content = tf_file.read_text(encoding='utf-8', errors='ignore')
            for match in self.RESOURCE_PATTERN.finditer(content):
                resource_type = match.group('type')
                resource_name = match.group('name')
                attrs = self._extract_attributes(match.group('body'))

                entry = {
                    'name': attrs.get('name') or resource_name,
                    'resource_name': resource_name,
                    'resource_type': resource_type,
                    'file_path': self._to_display_path(tf_file),
                    'email': attrs.get('email', ''),
                    'id': attrs.get('id', ''),
                }

                bucket = self._bucket_for_type(resource_type)
                if bucket:
                    result[bucket].append(entry)
                    result['resource_count'] += 1

        for key in ('users', 'policies', 'boundaries', 'roles'):
            result[key].sort(key=lambda item: (item.get('name') or '').lower())

        return result

    def _extract_attributes(self, body):
        attributes = {}
        for match in self.ATTRIBUTE_PATTERN.finditer(body):
            key = match.group('key')
            value = match.group('value').strip()
            if value.startswith('"') and value.endswith('"') and len(value) >= 2:
                value = value[1:-1]
            attributes[key] = value
        return attributes

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