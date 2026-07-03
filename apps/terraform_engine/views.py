from datetime import datetime, timezone as dt_timezone
import json
import re
import subprocess

from django.conf import settings
from django.contrib import messages
from django.core.cache import cache
from django.http import JsonResponse
from django.shortcuts import get_object_or_404, redirect
from django.urls import reverse
from django.utils import timezone
from django.views import View
from django.views.generic import TemplateView

from .models import TerraformExecution, TerraformWorkspace
from .services import TerraformExecutionService, sync_terraform_workspaces


INIT_SUMMARY_CACHE_TIMEOUT_SECONDS = 60

HIDDEN_ENVIRONMENT_MODULES = {
	'openpipeline_v2_logs_ingestsources',
	'openpipeline_v2_logs_pipelines',
	'openpipeline_v2_metrics_ingestsources',
	'openpipeline_v2_metrics_pipelines',
}


def _is_hidden_environment_module(workspace, module_name):
	return (
		workspace.scope == TerraformWorkspace.WorkspaceScope.ENVIRONMENT
		and module_name in HIDDEN_ENVIRONMENT_MODULES
	)


def _resolve_next_view_name(request, default='terraform_engine:overview'):
	next_key = (request.GET.get('next') or request.POST.get('next') or '').strip().lower()
	mapping = {
		'overview': 'terraform_engine:overview',
		'environment': 'terraform_engine:environment_overview',
		'platform': 'terraform_engine:platform_overview',
		'account_users': 'account_management:user_list',
		'account_policies': 'account_management:policy_list',
		'account_boundaries': 'account_management:boundary_list',
		'account_groups': 'account_management:role_list',
		'account_iam': 'account_management:iam_overview',
	}
	return mapping.get(next_key, default)


def _reference_script_name(workspace):
	if workspace.workspace_name == 'account-management':
		return 'export-account.ps1'
	return f'export-{workspace.workspace_name}.ps1'


def _expected_export_total(workspace):
	default_totals = {
		TerraformWorkspace.WorkspaceScope.ACCOUNT_MANAGEMENT: 12,
		TerraformWorkspace.WorkspaceScope.ENVIRONMENT: 379,
		TerraformWorkspace.WorkspaceScope.PLATFORM: 24,
	}

	script_name = _reference_script_name(workspace)
	script_path = workspace.workspace_dir / 'reference' / script_name
	if not script_path.exists():
		return default_totals.get(workspace.scope, 100)

	try:
		content = script_path.read_text(encoding='utf-8')
	except Exception:
		return default_totals.get(workspace.scope, 100)

	match = re.search(r'\[string\[\]\]\$Resources\s*=\s*@\((.*?)\)\s*\)', content, re.DOTALL)
	if not match:
		return default_totals.get(workspace.scope, 100)

	resources = re.findall(r'"dynatrace_[a-z0-9_]+"', match.group(1))
	if not resources:
		return default_totals.get(workspace.scope, 100)

	return len(resources)


def _annotate_export_state(workspace):
	modules_root = workspace.workspace_dir / 'modules'
	scaffold_files = {'main.tf', 'variables.tf', 'outputs.tf'}
	possible_total = _expected_export_total(workspace)

	state = {
		'module_count': 0,
		'exported_modules': 0,
		'used_modules': 0,
		'present_modules': 0,
		'scaffold_only_modules': 0,
		'possible_total': possible_total,
		'label': 'Keine Module',
		'badge_class': 'text-bg-secondary',
	}

	if not modules_root.exists():
		workspace.export_state = state
		return

	module_dirs = [item for item in modules_root.iterdir() if item.is_dir()]
	state['module_count'] = len(module_dirs)
	state['present_modules'] = state['module_count']

	for module_dir in module_dirs:
		tf_files = [item.name for item in module_dir.glob('*.tf')]
		if not tf_files:
			state['scaffold_only_modules'] += 1
			continue
		if set(tf_files).issubset(scaffold_files):
			state['scaffold_only_modules'] += 1
		else:
			state['exported_modules'] += 1

	state['used_modules'] = state['exported_modules']

	if state['module_count'] == 0:
		state['label'] = f'Used: 0, Present: 0, Total: {possible_total}'
		state['badge_class'] = 'text-bg-secondary'
	elif state['exported_modules'] == 0:
		state['label'] = f'Used: 0, Present: {state["module_count"]}, Total: {possible_total}'
		state['badge_class'] = 'text-bg-warning'
	elif state['exported_modules'] < possible_total:
		state['label'] = f'Used: {state["exported_modules"]}, Present: {state["module_count"]}, Total: {possible_total}'
		state['badge_class'] = 'text-bg-info'
	else:
		state['label'] = f'Used: {state["exported_modules"]}, Present: {state["module_count"]}, Total: {possible_total}'
		state['badge_class'] = 'text-bg-success'

	workspace.export_state = state


def _workspace_content_stamp(workspace):
	latest_mtime = 0
	file_count = 0

	for root, pattern in (
		(workspace.workspace_dir / 'modules', '*.tf'),
		(workspace.workspace_dir / 'objects', '*.json'),
	):
		if not root.exists():
			continue
		for item in root.rglob(pattern):
			file_count += 1
			try:
				mtime = item.stat().st_mtime_ns
			except OSError:
				continue
			if mtime > latest_mtime:
				latest_mtime = mtime

	script_path = workspace.workspace_dir / 'reference' / _reference_script_name(workspace)
	if script_path.exists():
		file_count += 1
		try:
			script_mtime = script_path.stat().st_mtime_ns
		except OSError:
			script_mtime = 0
		if script_mtime > latest_mtime:
			latest_mtime = script_mtime

	return f'{file_count}:{latest_mtime}'


def _read_module_objects(workspace, module_name):
	if _is_hidden_environment_module(workspace, module_name):
		return []

	modules_root = workspace.workspace_dir / 'modules'
	module_dir = modules_root / module_name
	if not module_dir.exists() or not module_dir.is_dir():
		return []

	scaffold_names = {'main.tf', 'variables.tf', 'outputs.tf', '___providers___.tf', '___variables___.tf'}
	tf_files = sorted(path for path in module_dir.glob('*.tf'))
	changed_files = _get_module_changed_tf_files(workspace, module_name)
	exported_files = [
		path.name
		for path in tf_files
		if path.name not in scaffold_names and _is_editable_platform_module_object(workspace, module_name, path)
	]
	objects = []
	for exported_file in exported_files:
		candidate = module_dir / exported_file
		content = ''
		try:
			content = candidate.read_text(encoding='utf-8', errors='replace')
		except Exception:
			content = ''
		objects.append(
			{
				'name': candidate.stem,
				'file_name': exported_file,
				'content': content,
				'created': exported_file in changed_files,
			}
		)
	return objects


def _get_module_changed_tf_files(workspace, module_name):
	module_dir = workspace.workspace_dir / 'modules' / module_name
	if not module_dir.exists() or not module_dir.is_dir():
		return set()

	try:
		result = subprocess.run(
			['git', '-C', str(settings.BASE_DIR), 'status', '--porcelain', '--', str(module_dir)],
			capture_output=True,
			text=True,
			check=False,
			timeout=5,
		)
	except Exception:
		return set()

	if result.returncode != 0:
		return set()

	changed = set()
	for raw_line in (result.stdout or '').splitlines():
		line = raw_line.strip()
		if not line or len(line) < 4:
			continue
		path_part = line[3:]
		if ' -> ' in path_part:
			path_part = path_part.split(' -> ', 1)[1]
		file_name = path_part.replace('\\', '/').split('/')[-1]
		if file_name.endswith('.tf'):
			changed.add(file_name)

	return changed


def _is_editable_platform_module_object(workspace, module_name, candidate):
	if workspace.scope == TerraformWorkspace.WorkspaceScope.ENVIRONMENT:
		if module_name in ('log_storage', 'log_processing'):
			return not candidate.stem.lower().startswith('_built-in')
		if module_name == 'log_sensitive_data_masking':
			stem = candidate.stem.lower()
			return not (stem.startswith('_built-in') or stem.startswith('_outdated-built-in'))
		return True

	if workspace.scope != TerraformWorkspace.WorkspaceScope.PLATFORM:
		return True

	if module_name == 'platform_bucket':
		return not candidate.stem.startswith('default_')

	if module_name != 'document':
		return True

	try:
		content = candidate.read_text(encoding='utf-8', errors='replace')
	except Exception:
		return False

	content_lower = content.lower()
	return '"importedwithcode": false' in content_lower and 'custom_id' not in content_lower


def _build_init_summary(workspace, include_object_content=False):
	modules_root = workspace.workspace_dir / 'modules'
	scaffold_names = {'main.tf', 'variables.tf', 'outputs.tf', '___providers___.tf', '___variables___.tf'}
	last_init_execution = workspace.executions.filter(command=TerraformExecution.CommandType.INIT).first()
	last_plan_execution = workspace.executions.filter(command=TerraformExecution.CommandType.PLAN).first()
	last_plan_succeeded = last_plan_execution.succeeded if last_plan_execution else False
	last_init_result = None
	workspace_stamp = _workspace_content_stamp(workspace)
	content_mode = 'full' if include_object_content else 'lite'
	last_exec_stamp = 'none'
	if last_init_execution is not None:
		last_exec_stamp = f'{last_init_execution.pk}:{int(last_init_execution.created_at.timestamp())}'

	cache_key = (
		'terraform_init_summary:'
		'v2:'
		f'{content_mode}:'
		f'{workspace.pk}:'
		f'{workspace_stamp}:'
		f'{last_exec_stamp}'
	)
	cached = cache.get(cache_key)
	if cached is not None:
		return cached

	summary = {
		'workspace_id': workspace.pk,
		'workspace_name': workspace.workspace_name,
		'scope_label': workspace.get_scope_display(),
		'total_loaded_objects': 0,
		'total_modified_count': 0,
		'last_plan_succeeded': last_plan_succeeded,
		'possible_total': _expected_export_total(workspace),
		'module_count': 0,
		'filled_module_count': 0,
		'present_module_count': 0,
		'types': [],
		'modules': [],
		'last_init_result': None,
	}

	if last_init_execution:
		created_at_display = timezone.localtime(last_init_execution.created_at).strftime('%Y-%m-%d %H:%M:%S')
		last_init_result = {
			'exit_code': last_init_execution.exit_code,
			'succeeded': last_init_execution.succeeded,
			'created_at': last_init_execution.created_at,
			'created_at_display': created_at_display,
			'stdout': last_init_execution.stdout or '',
			'stderr': last_init_execution.stderr or '',
		}
	summary['last_init_result'] = last_init_result

	module_dirs = []
	if modules_root.exists():
		module_dirs = sorted(
			[item for item in modules_root.iterdir() if item.is_dir()],
			key=lambda item: item.name,
		)
	if module_dirs:
		summary['module_count'] = len(module_dirs)
		summary['present_module_count'] = summary['module_count']
		for module_dir in module_dirs:
			if _is_hidden_environment_module(workspace, module_dir.name):
				continue
			tf_files = sorted(path for path in module_dir.glob('*.tf'))
			changed_files = _get_module_changed_tf_files(workspace, module_dir.name)
			exported_files = [
				path.name
				for path in tf_files
				if path.name not in scaffold_names and _is_editable_platform_module_object(workspace, module_dir.name, path)
			]
			modified_count = sum(1 for file_name in exported_files if file_name in changed_files)
			objects = []
			if include_object_content and exported_files:
				objects = _read_module_objects(workspace, module_dir.name)
			loaded_count = len(exported_files)
			summary['total_loaded_objects'] += loaded_count
			summary['total_modified_count'] += modified_count
			if loaded_count > 0:
				summary['filled_module_count'] += 1
			summary['types'].append(
				{
					'name': module_dir.name,
					'loaded_count': loaded_count,
				}
			)
			summary['modules'].append(
				{
					'name': module_dir.name,
					'loaded_count': loaded_count,
					'modified_count': modified_count,
					'files': exported_files,
					'preview': '',
					'objects': objects,
				}
			)
		if summary['total_loaded_objects'] > 0 or workspace.scope == TerraformWorkspace.WorkspaceScope.ACCOUNT_MANAGEMENT:
			cache.set(cache_key, summary, timeout=INIT_SUMMARY_CACHE_TIMEOUT_SECONDS)
			return summary

	if workspace.scope in (
		TerraformWorkspace.WorkspaceScope.ENVIRONMENT,
		TerraformWorkspace.WorkspaceScope.PLATFORM,
	):
		manifest_path = workspace.workspace_dir / 'objects' / 'manifest.json'
		if manifest_path.exists():
			try:
				payload = json.loads(manifest_path.read_text(encoding='utf-8'))
			except Exception:
				payload = {}

			exported = payload.get('exported', {}) if isinstance(payload, dict) else {}
			for key in sorted(exported.keys()):
				item = exported.get(key) or {}
				loaded_count = item.get('items')
				if not isinstance(loaded_count, int):
					loaded_count = 0
				summary['total_loaded_objects'] += loaded_count
				summary['types'].append({'name': key, 'loaded_count': loaded_count})
				if loaded_count > 0:
					summary['modules'].append(
						{
							'name': key,
							'loaded_count': loaded_count,
							'files': [],
							'preview': '',
							'objects': [],
						}
					)

			if summary['types']:
				cache.set(cache_key, summary, timeout=INIT_SUMMARY_CACHE_TIMEOUT_SECONDS)
				return summary

		objects_dir = workspace.workspace_dir / 'objects'
		if objects_dir.exists():
			for json_file in sorted(objects_dir.glob('*.json')):
				if json_file.name == 'manifest.json':
					continue
				loaded_count = 0
				try:
					payload = json.loads(json_file.read_text(encoding='utf-8'))
					if isinstance(payload, dict) and isinstance(payload.get('values'), list):
						loaded_count = len(payload.get('values') or [])
				except Exception:
					loaded_count = 0
				summary['total_loaded_objects'] += loaded_count
				summary['types'].append({'name': json_file.stem, 'loaded_count': loaded_count})
				if loaded_count > 0:
					summary['modules'].append(
						{
							'name': json_file.stem,
							'loaded_count': loaded_count,
							'files': [],
							'preview': '',
							'objects': [],
						}
					)
		if summary['types']:
			cache.set(cache_key, summary, timeout=INIT_SUMMARY_CACHE_TIMEOUT_SECONDS)
			return summary

	if not modules_root.exists():
		cache.set(cache_key, summary, timeout=INIT_SUMMARY_CACHE_TIMEOUT_SECONDS)
		return summary

	cache.set(cache_key, summary, timeout=INIT_SUMMARY_CACHE_TIMEOUT_SECONDS)
	return summary


def _append_module_detail_urls(summary):
	workspace_id = summary.get('workspace_id')
	if not workspace_id:
		return summary
	for module in summary.get('modules', []):
		module_name = module.get('name', '')
		if not module_name:
			continue
		module['details_url'] = reverse('terraform_engine:module_details', args=[workspace_id, module_name])
		module['save_url'] = reverse('terraform_engine:module_object_update', args=[workspace_id, module_name])
	return summary


def _serialize_init_summary(summary):
	last_init_result = summary.get('last_init_result') or None
	serialized = {
		'workspace_id': summary.get('workspace_id'),
		'workspace_name': summary.get('workspace_name', ''),
		'scope_label': summary.get('scope_label', ''),
		'total_loaded_objects': summary.get('total_loaded_objects', 0),
		'total_modified_count': summary.get('total_modified_count', 0),
		'last_plan_succeeded': bool(summary.get('last_plan_succeeded', False)),
		'possible_total': summary.get('possible_total', 0),
		'module_count': summary.get('module_count', 0),
		'filled_module_count': summary.get('filled_module_count', 0),
		'present_module_count': summary.get('present_module_count', 0),
		'types': summary.get('types', []),
		'modules': summary.get('modules', []),
		'last_init_result': None,
	}

	if last_init_result:
		serialized['last_init_result'] = {
			'exit_code': last_init_result.get('exit_code', 0),
			'succeeded': bool(last_init_result.get('succeeded')),
			'created_at_display': last_init_result.get('created_at_display', ''),
			'stdout': last_init_result.get('stdout', ''),
			'stderr': last_init_result.get('stderr', ''),
		}

	return serialized


def _annotate_data_freshness(workspace):
	scaffold_names = {'main.tf', 'variables.tf', 'outputs.tf', '___providers___.tf', '___variables___.tf'}
	latest_ts = workspace.last_run_at

	modules_root = workspace.workspace_dir / 'modules'
	if modules_root.exists():
		for tf_file in modules_root.rglob('*.tf'):
			if tf_file.name in scaffold_names:
				continue
			try:
				mtime = datetime.fromtimestamp(tf_file.stat().st_mtime, tz=dt_timezone.utc)
			except OSError:
				continue
			if latest_ts is None or mtime > latest_ts:
				latest_ts = mtime

	if latest_ts is None:
		workspace.data_freshness = {
			'label': 'Keine Daten',
			'badge_class': 'text-bg-secondary',
			'timestamp': None,
		}
		return

	age = timezone.now() - latest_ts
	if age.total_seconds() < 15 * 60:
		label = 'Aktuell'
		badge_class = 'text-bg-success'
	elif age.total_seconds() < 2 * 60 * 60:
		label = 'Frisch'
		badge_class = 'text-bg-info'
	elif age.total_seconds() < 24 * 60 * 60:
		label = 'Aelter als 2h'
		badge_class = 'text-bg-warning'
	else:
		label = 'Veraltet'
		badge_class = 'text-bg-danger'

	workspace.data_freshness = {
		'label': label,
		'badge_class': badge_class,
		'timestamp': latest_ts,
	}


def _read_export_progress(workspace):
	default_total = _expected_export_total(workspace)
	progress_file = workspace.workspace_dir / '.export-progress.json'
	if not progress_file.exists():
		return {
			'current': 0,
			'total': default_total,
			'status': 'pending',
			'resource': '',
			'failed': 0,
		}

	try:
		payload = json.loads(progress_file.read_text(encoding='utf-8-sig'))
	except Exception:
		payload = {}

	current = payload.get('current')
	total = payload.get('total')
	if not isinstance(current, int):
		current = 0
	if not isinstance(total, int) or total <= 0:
		total = default_total

	status = payload.get('status') or 'running'
	resource = payload.get('resource') or ''
	failed = payload.get('failed')
	if not isinstance(failed, int):
		failed = 0

	return {
		'current': current,
		'total': total,
		'status': status,
		'resource': resource,
		'failed': failed,
	}


class TerraformOverviewView(TemplateView):
	template_name = 'terraform_engine/overview.html'

	def get_context_data(self, **kwargs):
		context = super().get_context_data(**kwargs)
		all_workspaces = list(TerraformWorkspace.objects.select_related('environment').all())
		account_workspace = None
		groups = {}
		workspace_view_data = {}
		for workspace in all_workspaces:
			_annotate_export_state(workspace)
			_annotate_data_freshness(workspace)
			workspace.expected_export_total = _expected_export_total(workspace)
			workspace.init_summary = _build_init_summary(workspace, include_object_content=False)
			workspace_view_data[str(workspace.pk)] = _append_module_detail_urls(_serialize_init_summary(workspace.init_summary))
			if workspace.scope == TerraformWorkspace.WorkspaceScope.ACCOUNT_MANAGEMENT:
				account_workspace = workspace
				continue
			group_key = workspace.workspace_group
			group = groups.setdefault(
				group_key,
				{
					'name': group_key,
					'environment': workspace.environment,
					'environment_workspace': None,
					'platform_workspace': None,
				},
			)
			if workspace.scope == TerraformWorkspace.WorkspaceScope.ENVIRONMENT:
				group['environment_workspace'] = workspace
			elif workspace.scope == TerraformWorkspace.WorkspaceScope.PLATFORM:
				group['platform_workspace'] = workspace

		ordered_groups = sorted(
			groups.values(),
			key=lambda item: (0 if item['name'].startswith('test') else 1 if item['name'].startswith('prod') else 2, item['name']),
		)

		context['provider_source'] = settings.DT_TERRAFORM_PROVIDER_SOURCE
		context['provider_version'] = settings.DT_TERRAFORM_PROVIDER_VERSION
		context['account_workspace'] = account_workspace
		context['workspace_groups'] = ordered_groups
		context['executions'] = TerraformExecution.objects.select_related('workspace', 'workspace__environment')[:10]
		context['init_summary_overlay'] = self.request.session.pop('terraform_init_summary_overlay', None)
		context['workspace_view_data'] = workspace_view_data
		return context


class EnvironmentOverviewView(TemplateView):
	template_name = 'terraform_engine/environment_overview.html'

	def get_context_data(self, **kwargs):
		context = super().get_context_data(**kwargs)
		all_workspaces = list(TerraformWorkspace.objects.select_related('environment').all())
		groups = {}
		workspace_view_data = {}
		for workspace in all_workspaces:
			if workspace.scope == TerraformWorkspace.WorkspaceScope.ACCOUNT_MANAGEMENT:
				continue
			_annotate_data_freshness(workspace)
			workspace.expected_export_total = _expected_export_total(workspace)
			workspace.init_summary = _build_init_summary(workspace, include_object_content=False)
			workspace_view_data[str(workspace.pk)] = _append_module_detail_urls(_serialize_init_summary(workspace.init_summary))
			group_key = workspace.workspace_group
			group = groups.setdefault(
				group_key,
				{
					'name': group_key,
					'environment': workspace.environment,
					'environment_workspace': None,
					'platform_workspace': None,
				},
			)
			if workspace.scope == TerraformWorkspace.WorkspaceScope.ENVIRONMENT:
				group['environment_workspace'] = workspace
			elif workspace.scope == TerraformWorkspace.WorkspaceScope.PLATFORM:
				group['platform_workspace'] = workspace

		ordered_groups = sorted(
			groups.values(),
			key=lambda item: (0 if item['name'].startswith('test') else 1 if item['name'].startswith('prod') else 2, item['name']),
		)

		context['workspace_groups'] = ordered_groups
		context['workspace_view_data'] = workspace_view_data
		return context


class PlatformOverviewView(TemplateView):
	template_name = 'terraform_engine/platform_overview.html'

	def get_context_data(self, **kwargs):
		context = super().get_context_data(**kwargs)
		all_workspaces = list(TerraformWorkspace.objects.select_related('environment').all())
		groups = {}
		workspace_view_data = {}
		for workspace in all_workspaces:
			if workspace.scope == TerraformWorkspace.WorkspaceScope.ACCOUNT_MANAGEMENT:
				continue
			_annotate_data_freshness(workspace)
			workspace.expected_export_total = _expected_export_total(workspace)
			workspace.init_summary = _build_init_summary(workspace, include_object_content=False)
			workspace_view_data[str(workspace.pk)] = _append_module_detail_urls(_serialize_init_summary(workspace.init_summary))
			group_key = workspace.workspace_group
			group = groups.setdefault(
				group_key,
				{
					'name': group_key,
					'environment': workspace.environment,
					'environment_workspace': None,
					'platform_workspace': None,
				},
			)
			if workspace.scope == TerraformWorkspace.WorkspaceScope.ENVIRONMENT:
				group['environment_workspace'] = workspace
			elif workspace.scope == TerraformWorkspace.WorkspaceScope.PLATFORM:
				group['platform_workspace'] = workspace

		ordered_groups = sorted(
			groups.values(),
			key=lambda item: (0 if item['name'].startswith('test') else 1 if item['name'].startswith('prod') else 2, item['name']),
		)

		context['workspace_groups'] = ordered_groups
		context['workspace_view_data'] = workspace_view_data
		return context


class TerraformSyncView(View):
	def post(self, request, pk, *args, **kwargs):
		workspace = get_object_or_404(TerraformWorkspace, pk=pk)
		redirect_target = _resolve_next_view_name(request)
		module_name = (request.POST.get('module_name') or '').strip()
		is_ajax = request.headers.get('x-requested-with') == 'XMLHttpRequest'

		if module_name:
			if _is_hidden_environment_module(workspace, module_name):
				message = f'Modul {module_name} ist systemverwaltet und darf nicht veraendert werden.'
				messages.warning(request, message)
				if is_ajax:
					return JsonResponse({'ok': False, 'redirect_url': reverse(redirect_target), 'error': message}, status=400)
				return redirect(redirect_target)

			result = TerraformExecutionService().execute(
				workspace,
				TerraformExecution.CommandType.APPLY,
				target_module=module_name,
				run_provider_export=False,
			)
			if result.returncode == 0:
				messages.success(request, f'Terraform apply fuer Modul {module_name} in {workspace.workspace_name} erfolgreich.')
			else:
				messages.error(request, f'Terraform apply fuer Modul {module_name} in {workspace.workspace_name} fehlgeschlagen.')
			if is_ajax:
				return JsonResponse(
					{
						'ok': result.returncode == 0,
						'redirect_url': reverse(redirect_target),
					}
				)
			return redirect(redirect_target)

		results = sync_terraform_workspaces(
			selected_workspace_ids=[workspace.id],
			run_reference_export=True,
		)
		result = results.get(workspace.workspace_name, {})
		if result.get('ran') and result.get('success'):
			messages.success(request, f'Workspace {workspace.workspace_name} wurde synchronisiert und exportiert.')
		elif result.get('ran') and not result.get('success'):
			reason = (result.get('stderr') or result.get('stdout') or '').strip()
			messages.error(request, f'Workspace {workspace.workspace_name} synchronisiert, Export fehlgeschlagen: {reason[:300]}')
		else:
			reason = result.get('reason', 'Unbekannter Grund')
			messages.warning(request, f'Workspace {workspace.workspace_name} synchronisiert ohne Export: {reason}')
		return redirect(redirect_target)


class TerraformCommandView(View):
	command = None

	def post(self, request, pk, *args, **kwargs):
		workspace = get_object_or_404(TerraformWorkspace, pk=pk)
		is_ajax = request.headers.get('x-requested-with') == 'XMLHttpRequest'
		redirect_target = _resolve_next_view_name(request)
		module_name = (request.POST.get('module_name') or '').strip()
		if module_name and _is_hidden_environment_module(workspace, module_name):
			message = f'Modul {module_name} ist systemverwaltet und darf nicht veraendert werden.'
			messages.warning(request, message)
			if is_ajax:
				return JsonResponse({'ok': False, 'redirect_url': reverse(redirect_target), 'error': message}, status=400)
			return redirect(redirect_target)

		request.session.pop('terraform_init_summary_overlay', None)
		result = TerraformExecutionService().execute(
			workspace,
			self.command,
			target_module=module_name or None,
			run_provider_export=not bool(module_name),
		)
		if self.command == TerraformExecution.CommandType.INIT and redirect_target.startswith('terraform_engine:'):
			request.session['terraform_init_summary_overlay'] = _serialize_init_summary(_build_init_summary(workspace))
		target_suffix = f' (Modul {module_name})' if module_name else ''
		if result.returncode == 0:
			messages.success(request, f'Terraform {self.command}{target_suffix} fuer {workspace.workspace_name} erfolgreich.')
		else:
			messages.error(request, f'Terraform {self.command}{target_suffix} fuer {workspace.workspace_name} fehlgeschlagen.')
		if is_ajax:
			return JsonResponse(
				{
					'ok': result.returncode == 0,
					'redirect_url': reverse(redirect_target),
				}
			)
		return redirect(redirect_target)


class TerraformProgressView(View):
	def get(self, request, pk, *args, **kwargs):
		workspace = get_object_or_404(TerraformWorkspace, pk=pk)
		return JsonResponse(_read_export_progress(workspace))


class TerraformModuleDetailsView(View):
	def get(self, request, pk, module_name, *args, **kwargs):
		workspace = get_object_or_404(TerraformWorkspace, pk=pk)
		if _is_hidden_environment_module(workspace, module_name):
			return JsonResponse({'error': 'Module ist ausgeblendet.'}, status=404)
		objects = _read_module_objects(workspace, module_name)
		return JsonResponse(
			{
				'workspace_id': workspace.pk,
				'workspace_name': workspace.workspace_name,
				'module_name': module_name,
				'save_url': reverse('terraform_engine:module_object_update', args=[workspace.pk, module_name]),
				'loaded_count': len(objects),
				'objects': objects,
			}
		)


class TerraformModuleObjectUpdateView(View):
	def post(self, request, pk, module_name, *args, **kwargs):
		workspace = get_object_or_404(TerraformWorkspace, pk=pk)
		if _is_hidden_environment_module(workspace, module_name):
			return JsonResponse({'ok': False, 'error': 'Module ist systemverwaltet.'}, status=403)
		module_dir = workspace.workspace_dir / 'modules' / module_name
		if not module_dir.exists() or not module_dir.is_dir():
			return JsonResponse({'ok': False, 'error': 'Module nicht gefunden.'}, status=404)

		file_name = (request.POST.get('file_name') or '').strip()
		content = request.POST.get('content')
		create_new = (request.POST.get('create_new') or '').strip().lower() in {'1', 'true', 'yes', 'on'}
		delete_object = (request.POST.get('delete') or '').strip().lower() in {'1', 'true', 'yes', 'on'}
		if not file_name:
			return JsonResponse({'ok': False, 'error': 'Dateiname fehlt.'}, status=400)
		if content is None and not delete_object:
			return JsonResponse({'ok': False, 'error': 'Inhalt fehlt.'}, status=400)
		if '/' in file_name or '\\' in file_name or not file_name.endswith('.tf'):
			return JsonResponse({'ok': False, 'error': 'Ungueltiger Dateiname.'}, status=400)

		target_file = module_dir / file_name
		if delete_object:
			if not target_file.exists():
				return JsonResponse({'ok': False, 'error': 'Objektdatei nicht gefunden.'}, status=404)
			if not target_file.is_file():
				return JsonResponse({'ok': False, 'error': 'Ungueltiges Zielobjekt.'}, status=400)
			target_file.unlink()
			return JsonResponse({'ok': True, 'deleted': True, 'file_name': file_name})

		if target_file.exists() and create_new:
			return JsonResponse({'ok': False, 'error': 'Objektdatei existiert bereits.'}, status=409)
		if not target_file.exists() and not create_new:
			return JsonResponse({'ok': False, 'error': 'Objektdatei nicht gefunden.'}, status=404)
		if target_file.exists() and not target_file.is_file():
			return JsonResponse({'ok': False, 'error': 'Ungueltiges Zielobjekt.'}, status=400)

		target_file.write_text(content, encoding='utf-8')
		return JsonResponse(
			{
				'ok': True,
				'created': create_new,
				'object': {
					'name': target_file.stem,
					'file_name': target_file.name,
					'content': content,
				},
			}
		)


class TerraformPlanView(TerraformCommandView):
	command = TerraformExecution.CommandType.PLAN


class TerraformInitView(TerraformCommandView):
	command = TerraformExecution.CommandType.INIT
