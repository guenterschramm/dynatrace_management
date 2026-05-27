import subprocess
import shutil
import json
from pathlib import Path

from django.conf import settings
from django.utils import timezone
import requests

try:
    import truststore
except ImportError:  # pragma: no cover
    truststore = None

if truststore is not None:
    truststore.inject_into_ssl()

from apps.environments.models import Environment

from .models import TerraformExecution, TerraformWorkspace


EXPORT_DOMAINS = (
    'alerting',
    'api_detection',
    'application_detection_rule',
)

REFERENCE_ROOT_DEFAULT = Path(r'C:\Tools\Terraform\tf-dynatrace')


class TerraformRunner:
    def __init__(self, executable=None):
        self.executable = executable or settings.DT_TERRAFORM_EXECUTABLE

    def run(self, workspace_dir, *arguments):
        command = [self.executable, *arguments]
        return subprocess.run(
            command,
            cwd=workspace_dir,
            capture_output=True,
            text=True,
            check=False,
        )

    def init(self, workspace_dir):
        return self.run(workspace_dir, 'init', '-input=false', '-no-color')

    def plan(self, workspace_dir):
        return self.run(workspace_dir, 'plan', '-input=false', '-no-color')


class DynatraceConfigExporter:
    DOMAIN_ENDPOINTS = {
        'alerting': ['/api/config/v1/alertingProfiles'],
        'application_detection_rule': ['/api/config/v1/applicationDetectionRules'],
        # Endpoint availability can differ by tenant/version. We try candidates in order.
        'api_detection': [
            '/api/config/v1/service/detectionRules/FULL_WEB_REQUEST',
            '/api/config/v1/service/detectionRules/FULL_HTTP_REQUEST',
        ],
    }

    def export(self, workspace):
        environment = workspace.environment
        if environment is None:
            return {
                'exported': {},
                'errors': {'account_management': 'No environment-bound API export required.'},
            }

        base_url = environment.environment_url.rstrip('/')
        headers = {
            'Authorization': f'Api-Token {environment.api_token}',
            'Accept': 'application/json',
        }
        verify = settings.DT_ENV_CA_BUNDLE or settings.DT_ENV_SSL_VERIFY

        export_root = workspace.workspace_dir / 'objects'
        export_root.mkdir(parents=True, exist_ok=True)

        exported = {}
        errors = {}

        for domain, endpoints in self.DOMAIN_ENDPOINTS.items():
            payload, used_endpoint, error = self._fetch_domain(base_url, headers, endpoints, verify)
            if payload is None:
                errors[domain] = error
                continue

            file_path = export_root / f'{domain}.json'
            file_path.write_text(json.dumps(payload, indent=2, ensure_ascii=True), encoding='utf-8')
            exported[domain] = {
                'endpoint': used_endpoint,
                'file': str(file_path),
                'items': len(payload.get('values', [])) if isinstance(payload, dict) else None,
            }

        manifest = {
            'workspace': workspace.workspace_name,
            'scope': workspace.scope,
            'exported': exported,
            'errors': errors,
        }
        (export_root / 'manifest.json').write_text(
            json.dumps(manifest, indent=2, ensure_ascii=True),
            encoding='utf-8',
        )

        return {
            'exported': exported,
            'errors': errors,
        }

    def _fetch_domain(self, base_url, headers, endpoints, verify):
        last_error = 'No endpoint candidates defined.'
        for endpoint in endpoints:
            try:
                response = requests.get(
                    f'{base_url}{endpoint}',
                    headers=headers,
                    verify=verify,
                    timeout=30,
                )
            except Exception as exc:  # pragma: no cover
                last_error = str(exc)
                continue

            if response.status_code == 200:
                try:
                    return response.json(), endpoint, None
                except Exception as exc:  # pragma: no cover
                    return None, endpoint, f'Invalid JSON response: {exc}'

            last_error = f'HTTP {response.status_code} on {endpoint}: {response.text[:300]}'

        return None, None, last_error


def _render_provider_tf(workspace):
    if workspace.scope == TerraformWorkspace.WorkspaceScope.ACCOUNT_MANAGEMENT:
        return '\n'.join([
            'terraform {',
            '  required_version = ">= 1.8.0"',
            '  required_providers {',
            '    dynatrace = {',
            f'      source  = "{settings.DT_TERRAFORM_PROVIDER_SOURCE}"',
            f'      version = "{settings.DT_TERRAFORM_PROVIDER_VERSION}"',
            '    }',
            '  }',
            '}',
            '',
            '# Account-management resources are added in later iterations.',
            '# Provider authentication for account scope will be added together with IAM resources.',
        ])

    return '\n'.join([
        'terraform {',
        '  required_version = ">= 1.8.0"',
        '  required_providers {',
        '    dynatrace = {',
        f'      source  = "{settings.DT_TERRAFORM_PROVIDER_SOURCE}"',
        f'      version = "{settings.DT_TERRAFORM_PROVIDER_VERSION}"',
        '    }',
        '  }',
        '}',
        '',
        'provider "dynatrace" {',
        '  dt_env_url = var.environment_url',
        '  api_token  = var.api_token',
        '}',
    ])



def _render_main_tf(workspace):
    module_names = _module_names_for_workspace(workspace)

    if workspace.scope == TerraformWorkspace.WorkspaceScope.ACCOUNT_MANAGEMENT:
        module_name = module_names[0]
        module_source = _module_source_for_workspace(module_name)
        return '\n'.join([
            '# Terraform workspace for Dynatrace account management',
            'locals {',
            '  workspace_scope = "account_management"',
            '}',
            '',
            'module "account_management" {',
            f'  source = "{module_source}"',
            '  account_id = var.account_id',
            '}',
            '',
            '# Example target domains: policies, boundaries, roles and account-wide user bindings.',
        ])

    environment = workspace.environment
    module_blocks = []
    for module_name in module_names:
        module_blocks.extend([
            f'module "{module_name}" {{',
            f'  source = "{_module_source_for_workspace(module_name)}"',
            f'  object_file = "${{path.root}}/objects/{module_name}.json"',
            '  environment_name = local.environment_name',
            '  environment_type = local.environment_type',
            '}',
            '',
        ])

    return '\n'.join([
        f'# Terraform workspace for Dynatrace {workspace.scope}: {environment.name}',
        'locals {',
        f'  environment_name = "{environment.name}"',
        f'  environment_type = "{environment.environment_type}"',
        f'  workspace_scope = "{workspace.scope}"',
        '}',
        '',
        *module_blocks,
        '# Dynatrace resources are attached in subsequent implementation steps.',
        '# Example target domains: alerting profiles, settings objects, platform settings.',
    ])



def _render_variables_tf(workspace):
    if workspace.scope == TerraformWorkspace.WorkspaceScope.ACCOUNT_MANAGEMENT:
        return '\n'.join([
            'variable "account_id" {',
            '  type = string',
            '}',
            '',
            'variable "client_id" {',
            '  type      = string',
            '  sensitive = true',
            '}',
            '',
            'variable "client_secret" {',
            '  type      = string',
            '  sensitive = true',
            '}',
        ])

    return '\n'.join([
        'variable "environment_url" {',
        '  type = string',
        '}',
        '',
        'variable "api_token" {',
        '  type      = string',
        '  sensitive = true',
        '}',
        '',
        'variable "platform_token" {',
        '  type      = string',
        '  sensitive = true',
        '  default   = ""',
        '}',
    ])



def _render_tfvars(workspace):
    if workspace.scope == TerraformWorkspace.WorkspaceScope.ACCOUNT_MANAGEMENT:
        account = settings.DT_ACCOUNT_CONFIG
        client_id = account['client_id'].replace('"', '\\"')
        client_secret = account['client_secret'].replace('"', '\\"')
        return '\n'.join([
            f'account_id = "{account["account_id"]}"',
            f'client_id = "{client_id}"',
            f'client_secret = "{client_secret}"',
        ])

    environment = workspace.environment
    api_token = environment.api_token.replace('"', '\\"')
    platform_token = environment.platform_token.replace('"', '\\"')
    return '\n'.join([
        f'environment_url = "{environment.environment_url}"',
        f'api_token = "{api_token}"',
        f'platform_token = "{platform_token}"',
    ])


def _write_file(path, content):
    path.write_text(f'{content}\n', encoding='utf-8')


def _module_name_for_workspace(workspace):
    if workspace.scope == TerraformWorkspace.WorkspaceScope.ACCOUNT_MANAGEMENT:
        return 'account_management'
    return 'environment'


def _module_names_for_workspace(workspace):
    if workspace.scope == TerraformWorkspace.WorkspaceScope.ACCOUNT_MANAGEMENT:
        reference_modules = _reference_module_names(workspace)
        return reference_modules or ['account_management']
    reference_modules = _reference_module_names(workspace)
    if reference_modules:
        return reference_modules
    return list(EXPORT_DOMAINS)


def _reference_root():
    configured_root = getattr(settings, 'DT_REFERENCE_TERRAFORM_ROOT', str(REFERENCE_ROOT_DEFAULT))
    return Path(configured_root)


def _reference_workspace_dir(workspace):
    root = _reference_root()
    if workspace.scope == TerraformWorkspace.WorkspaceScope.ACCOUNT_MANAGEMENT:
        return root / 'account-management'
    if workspace.scope == TerraformWorkspace.WorkspaceScope.PLATFORM:
        return root / 'voestalpine' / 'platform'
    return root / 'voestalpine' / 'environment'


def _reference_module_names(workspace):
    modules_dir = _reference_workspace_dir(workspace) / 'modules'
    if not modules_dir.exists():
        return []
    return sorted([item.name for item in modules_dir.iterdir() if item.is_dir()])


def _reference_script_name(workspace):
    if workspace.workspace_name == 'account-management':
        return 'export-account.ps1'
    return f'export-{workspace.workspace_name}.ps1'


def _legacy_module_root():
    return Path(settings.BASE_DIR) / 'terraform' / 'modules'


def _module_dir_for_workspace(workspace, module_name):
    return workspace.workspace_dir / 'modules' / module_name


def _module_source_for_workspace(module_name):
    return f'./modules/{module_name}'


def _create_module_scaffold(module_dir, module_name):
    module_dir.mkdir(parents=True, exist_ok=True)

    main_tf = module_dir / 'main.tf'
    if not main_tf.exists():
        _write_file(
            main_tf,
            '\n'.join([
                f'# Module scaffold: {module_name}',
                '# Dynatrace resources are added in later iterations.',
            ]),
        )

    variables_tf = module_dir / 'variables.tf'
    if not variables_tf.exists():
        if module_name == 'account_management':
            variable_body = '\n'.join([
                'variable "account_id" {',
                '  type = string',
                '}',
            ])
        else:
            variable_body = '\n'.join([
                'variable "object_file" {',
                '  type = string',
                '}',
                '',
                'variable "environment_name" {',
                '  type = string',
                '}',
                '',
                'variable "environment_type" {',
                '  type = string',
                '}',
            ])
        _write_file(variables_tf, variable_body)

    outputs_tf = module_dir / 'outputs.tf'
    if not outputs_tf.exists():
        if module_name == 'account_management':
            output_body = '\n'.join([
                'output "account_scope" {',
                '  value = var.account_id',
                '}',
            ])
        else:
            output_body = '\n'.join([
                'output "module_export_status" {',
                '  value = fileexists(var.object_file)',
                '}',
            ])
        _write_file(outputs_tf, output_body)


def _migrate_legacy_global_module(workspace, module_name):
    legacy_module = _legacy_module_root() / module_name
    module_dir = _module_dir_for_workspace(workspace, module_name)
    if legacy_module.exists() and not module_dir.exists():
        module_dir.parent.mkdir(parents=True, exist_ok=True)
        shutil.copytree(legacy_module, module_dir)


def _sync_reference_workspace_files(workspace):
    reference_dir = _reference_workspace_dir(workspace)
    if not reference_dir.exists():
        return

    reference_target = workspace.workspace_dir / 'reference'
    reference_target.mkdir(parents=True, exist_ok=True)

    for file_name in ('.terraform.lock.hcl', 'main.tf', '___providers___.tf'):
        source_file = reference_dir / file_name
        if source_file.exists():
            shutil.copy2(source_file, reference_target / file_name)

    script_name = _reference_script_name(workspace)
    script_source = _reference_root() / script_name
    if script_source.exists():
        shutil.copy2(script_source, reference_target / script_name)


def _sync_reference_module(workspace, module_name):
    source_module = _reference_workspace_dir(workspace) / 'modules' / module_name
    target_module = _module_dir_for_workspace(workspace, module_name)
    if source_module.exists():
        target_module.mkdir(parents=True, exist_ok=True)
        copied_any = False
        for file_name in ('main.tf', 'variables.tf', 'outputs.tf'):
            source_file = source_module / file_name
            if source_file.exists():
                shutil.copy2(source_file, target_module / file_name)
                copied_any = True
        return copied_any
    return False


def _cleanup_legacy_module_root():
    legacy_root = _legacy_module_root()
    if legacy_root.exists():
        shutil.rmtree(legacy_root)


def _legacy_script_name_for_workspace(workspace):
    mapping = {
        'account-management': 'export-account.ps1',
        'test-environment': 'export-test-environment.ps1',
        'test-platform': 'export-test-platform.ps1',
        'prod-environment': 'export-prod-environment.ps1',
        'prod-platform': 'export-prod-platform.ps1',
    }
    return mapping.get(workspace.workspace_name)


def _legacy_tfvars_content():
    account = settings.DT_ACCOUNT_CONFIG
    environments = {item['name']: item for item in settings.DT_DEFAULT_ENVIRONMENTS}
    test_env = environments.get('test-environment', {})
    prod_env = environments.get('prod-environment', {})

    lines = [
        f'tenant_test_env_url = "{test_env.get("environment_url", "")}"',
        f'tenant_test_api_token = "{test_env.get("api_token", "")}"',
        f'tenant_prod_env_url = "{prod_env.get("environment_url", "")}"',
        f'tenant_prod_api_token = "{prod_env.get("api_token", "")}"',
        f'platform_test_env_url = "{test_env.get("platform_url", "")}"',
        f'platform_test_token = "{test_env.get("platform_token", "")}"',
        f'platform_prod_env_url = "{prod_env.get("platform_url", "")}"',
        f'platform_prod_token = "{prod_env.get("platform_token", "")}"',
        f'account_id = "{account.get("account_id", "")}"',
        f'account_client_id = "{account.get("client_id", "")}"',
        f'account_client_secret = "{account.get("client_secret", "")}"',
    ]
    return '\n'.join(lines) + '\n'


def run_legacy_export_script(workspace):
    script_name = _legacy_script_name_for_workspace(workspace)
    if not script_name:
        return {'ran': False, 'success': False, 'reason': 'No script mapped for workspace.'}

    script_path = _reference_root() / script_name
    if not script_path.exists():
        return {'ran': False, 'success': False, 'reason': f'Script missing: {script_path}'}

    tfvars_path = workspace.workspace_dir / 'reference' / 'terraform.tfvars'
    tfvars_path.parent.mkdir(parents=True, exist_ok=True)
    tfvars_path.write_text(_legacy_tfvars_content(), encoding='utf-8')

    result = subprocess.run(
        [
            'powershell',
            '-ExecutionPolicy',
            'Bypass',
            '-File',
            str(script_path),
            '-TfvarsPath',
            str(tfvars_path),
            '-TargetFolder',
            str(workspace.workspace_dir),
        ],
        cwd=str(_reference_root()),
        capture_output=True,
        text=True,
        check=False,
    )

    return {
        'ran': True,
        'success': result.returncode == 0,
        'code': result.returncode,
        'stdout': result.stdout,
        'stderr': result.stderr,
        'script': str(script_path),
    }


def ensure_workspace_files(workspace):
    workspace_dir = workspace.workspace_dir
    workspace_path = Path(workspace_dir)
    workspace_path.mkdir(parents=True, exist_ok=True)

    _sync_reference_workspace_files(workspace)

    expected_modules = set(_module_names_for_workspace(workspace))
    for module_name in expected_modules:
        _migrate_legacy_global_module(workspace, module_name)
        has_reference_content = _sync_reference_module(workspace, module_name)
        if not has_reference_content:
            _create_module_scaffold(_module_dir_for_workspace(workspace, module_name), module_name)

    modules_root = workspace.workspace_dir / 'modules'
    if modules_root.exists():
        for child in modules_root.iterdir():
            if child.is_dir() and child.name not in expected_modules:
                shutil.rmtree(child)

    _write_file(workspace_path / 'provider.tf', _render_provider_tf(workspace))
    _write_file(workspace_path / 'main.tf', _render_main_tf(workspace))
    _write_file(workspace_path / 'variables.tf', _render_variables_tf(workspace))
    _write_file(workspace_path / 'terraform.tfvars', _render_tfvars(workspace))


def _migrate_legacy_workspace_directory(workspace):
    legacy_dir = Path(settings.DT_TERRAFORM_ROOT) / workspace.workspace_name
    target_dir = workspace.workspace_dir
    if legacy_dir == target_dir:
        return
    if not legacy_dir.exists():
        return
    if target_dir.exists() and any(target_dir.iterdir()):
        return
    target_dir.parent.mkdir(parents=True, exist_ok=True)
    shutil.move(str(legacy_dir), str(target_dir))


def _environment_prefix(environment):
    name = environment.name.lower()
    for prefix in ('test', 'prod'):
        if name.startswith(prefix):
            return prefix
    return environment.workspace_slug


def desired_workspace_specs():
    yield {
        'workspace_name': 'account-management',
        'scope': TerraformWorkspace.WorkspaceScope.ACCOUNT_MANAGEMENT,
        'environment': None,
    }
    for environment in Environment.objects.order_by('name'):
        prefix = _environment_prefix(environment)
        yield {
            'workspace_name': f'{prefix}-environment',
            'scope': TerraformWorkspace.WorkspaceScope.ENVIRONMENT,
            'environment': environment,
        }
        yield {
            'workspace_name': f'{prefix}-platform',
            'scope': TerraformWorkspace.WorkspaceScope.PLATFORM,
            'environment': environment,
        }


def sync_terraform_workspaces(selected_workspace_ids=None, run_reference_export=False):
    selected_workspace_ids = {
        int(workspace_id)
        for workspace_id in (selected_workspace_ids or [])
        if str(workspace_id).isdigit()
    }

    desired_names = set()
    sync_results = {}
    for spec in desired_workspace_specs():
        desired_names.add(spec['workspace_name'])
        workspace, _ = TerraformWorkspace.objects.get_or_create(
            workspace_name=spec['workspace_name'],
            defaults={
                'scope': spec['scope'],
                'environment': spec['environment'],
            },
        )
        changed_fields = []
        if workspace.scope != spec['scope']:
            workspace.scope = spec['scope']
            changed_fields.append('scope')
        if workspace.environment_id != (spec['environment'].id if spec['environment'] else None):
            workspace.environment = spec['environment']
            changed_fields.append('environment')
        expected_state_path = str(workspace.workspace_dir / 'terraform.tfstate')
        if workspace.state_path != expected_state_path:
            workspace.state_path = expected_state_path
            changed_fields.append('state_path')
        if changed_fields:
            changed_fields.append('updated_at')
            workspace.save(update_fields=changed_fields)
        else:
            workspace.save()

        if not selected_workspace_ids or workspace.id in selected_workspace_ids:
            _migrate_legacy_workspace_directory(workspace)
            ensure_workspace_files(workspace)
            if run_reference_export:
                sync_results[workspace.workspace_name] = run_legacy_export_script(workspace)
            else:
                sync_results[workspace.workspace_name] = {'ran': False, 'success': True}

    if not selected_workspace_ids:
        TerraformWorkspace.objects.exclude(workspace_name__in=desired_names).delete()
    _cleanup_legacy_module_root()
    return sync_results


class TerraformExecutionService:
    def __init__(self, runner=None):
        self.runner = runner or TerraformRunner()
        self.exporter = DynatraceConfigExporter()

    def _create_execution_log(self, workspace, command, result):
        return TerraformExecution.objects.create(
            workspace=workspace,
            command=command,
            exit_code=result.returncode,
            stdout=result.stdout,
            stderr=result.stderr,
            succeeded=result.returncode == 0,
        )

    def execute(self, workspace, command):
        ensure_workspace_files(workspace)

        export_result = {'exported': {}, 'errors': {}}
        if workspace.scope in (
            TerraformWorkspace.WorkspaceScope.ENVIRONMENT,
            TerraformWorkspace.WorkspaceScope.PLATFORM,
        ):
            export_result = self.exporter.export(workspace)

        status_map = {
            'init': TerraformWorkspace.WorkspaceStatus.INIT_RUNNING,
            'plan': TerraformWorkspace.WorkspaceStatus.PLAN_RUNNING,
        }
        workspace.status = status_map[command]
        workspace.last_command = command
        workspace.last_run_at = timezone.now()
        workspace.save(update_fields=['status', 'last_command', 'last_run_at', 'updated_at'])

        if command == TerraformExecution.CommandType.PLAN:
            init_result = self.runner.init(workspace.workspace_dir)
            self._create_execution_log(workspace, TerraformExecution.CommandType.INIT, init_result)
            if init_result.returncode != 0:
                workspace.status = TerraformWorkspace.WorkspaceStatus.FAILED
                workspace.save(update_fields=['status', 'updated_at'])
                return init_result

        if command == TerraformExecution.CommandType.INIT:
            result = self.runner.init(workspace.workspace_dir)
        else:
            result = self.runner.plan(workspace.workspace_dir)

        export_summary_lines = []
        if export_result['exported']:
            exported_names = ', '.join(sorted(export_result['exported'].keys()))
            export_summary_lines.append(f'Config export completed: {exported_names}')
        if export_result['errors']:
            error_parts = [f'{key}: {value}' for key, value in export_result['errors'].items()]
            export_summary_lines.append('Config export warnings: ' + ' | '.join(error_parts))
        if export_summary_lines:
            summary = '\n'.join(export_summary_lines)
            result.stdout = f'{summary}\n\n{result.stdout or ""}'

        succeeded = result.returncode == 0
        self._create_execution_log(workspace, command, result)

        workspace.status = (
            TerraformWorkspace.WorkspaceStatus.READY
            if succeeded
            else TerraformWorkspace.WorkspaceStatus.FAILED
        )
        workspace.save(update_fields=['status', 'updated_at'])
        return result