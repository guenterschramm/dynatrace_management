from pathlib import Path


def load_platform_config(file_path):
    values = {}
    config_path = Path(file_path)
    if not config_path.exists():
        return values

    for raw_line in config_path.read_text(encoding='utf-8').splitlines():
        line = raw_line.strip()
        if not line or line.startswith('#'):
            continue
        if '=' not in line:
            continue

        key, raw_value = line.split('=', 1)
        key = key.strip()
        value = raw_value.strip()

        if value.startswith('"') and value.endswith('"'):
            value = value[1:-1]

        values[key] = value

    return values


def build_runtime_config(values):
    account = {
        'account_id': values.get('account_id', ''),
        'client_id': values.get('account_client_id', ''),
        'client_secret': values.get('account_client_secret', ''),
        'api_url': values.get('account_management_api_url', 'https://api.dynatrace.com'),
    }
    environments = []

    for stage in ('test', 'prod'):
        tenant_url = values.get(f'tenant_{stage}_env_url', '')
        tenant_token = values.get(f'tenant_{stage}_api_token', '')
        platform_url = values.get(f'platform_{stage}_env_url', '')
        platform_token = values.get(f'platform_{stage}_token', '')

        if not tenant_url:
            continue

        environments.append(
            {
                'name': f'{stage}-environment',
                'display_name': stage.upper(),
                'environment_url': tenant_url,
                'api_token': tenant_token,
                'platform_url': platform_url,
                'platform_token': platform_token,
                'environment_type': 'production' if stage == 'prod' else 'staging',
                'account_uuid': account['account_id'],
            }
        )

    return {
        'account': account,
        'environments': environments,
    }