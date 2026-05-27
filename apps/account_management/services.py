from dataclasses import dataclass

import requests
from django.conf import settings

try:
    import truststore
except ImportError:  # pragma: no cover
    truststore = None

if truststore is not None:
    truststore.inject_into_ssl()

from .models import AccountUser


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