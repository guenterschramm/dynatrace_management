# Dynatrace Management

Aktueller Stand: Django-Startgeruest mit Dashboard, Environment-CRUD und automatischer Terraform-Workspace-Anlage pro Environment.

## Setup

```powershell
.\.venv\Scripts\Activate.ps1
pip install -r requirements.txt
Copy-Item .env.example .env
python manage.py migrate
python manage.py runserver
```

## Verfuegbare Bereiche

- Dashboard unter `/`
- Environments unter `/environments/`
- Account Management unter `/account-management/`
- Django Admin unter `/admin/`

## Zugangsdatenquelle

- Laufzeitdaten fuer Dynatrace liegen in `config/platform.config`
- Import in die Datenbank mit `python manage.py import_platform_config`
- Falls Corporate TLS-Inspection aktiv ist, optional `DT_ACCOUNT_CA_BUNDLE` oder `DT_ACCOUNT_SSL_VERIFY=false` in `.env` setzen

## Naechste Implementierungsschritte

- Dynatrace IAM Gruppen und Policy Bindings
- Terraform `plan`/`apply` Orchestrierung mit Execution Logs
- Environment API v2 und Platform API Domainen