from datetime import datetime, timezone as dt_timezone

from django.contrib import messages
from django.shortcuts import redirect
from django.utils import timezone
from django.views import View
from django.views.generic import TemplateView

from apps.terraform_engine.models import TerraformWorkspace

from .services import DynatraceAccountSyncService, TerraformAccountDataService


class TerraformAccountContextMixin:
	def _terraform_data(self):
		return TerraformAccountDataService().load()

	def _account_workspace(self):
		return TerraformWorkspace.objects.filter(
			scope=TerraformWorkspace.WorkspaceScope.ACCOUNT_MANAGEMENT
		).first()

	def _data_freshness(self, workspace):
		if workspace is None:
			return {
				'label': 'Unbekannt',
				'badge_class': 'text-bg-secondary',
				'timestamp': None,
			}

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
			return {
				'label': 'Keine exportierten Objekte',
				'badge_class': 'text-bg-warning',
				'timestamp': None,
			}

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

		return {
			'label': label,
			'badge_class': badge_class,
			'timestamp': latest_ts,
		}

	def _base_context(self):
		data = self._terraform_data()
		workspace = self._account_workspace()
		freshness = self._data_freshness(workspace)
		return {
			'source_root': data['source_root'],
			'resource_count': data['resource_count'],
			'account_workspace': workspace,
			'account_data_freshness': freshness,
		}


class AccountUserListView(TerraformAccountContextMixin, TemplateView):
	template_name = 'account_management/user_list.html'

	def get_context_data(self, **kwargs):
		context = super().get_context_data(**kwargs)
		data = self._terraform_data()
		context['section'] = 'users'
		context['users'] = data['users']
		context.update(self._base_context())
		return context


class AccountPolicyListView(TerraformAccountContextMixin, TemplateView):
	template_name = 'account_management/policy_list.html'

	def get_context_data(self, **kwargs):
		context = super().get_context_data(**kwargs)
		data = self._terraform_data()
		context['section'] = 'policies'
		context['policies'] = data['policies']
		context.update(self._base_context())
		return context


class AccountBoundaryListView(TerraformAccountContextMixin, TemplateView):
	template_name = 'account_management/boundary_list.html'

	def get_context_data(self, **kwargs):
		context = super().get_context_data(**kwargs)
		data = self._terraform_data()
		context['section'] = 'boundaries'
		context['boundaries'] = data['boundaries']
		context.update(self._base_context())
		return context


class AccountRoleListView(TerraformAccountContextMixin, TemplateView):
	template_name = 'account_management/role_list.html'

	def get_context_data(self, **kwargs):
		context = super().get_context_data(**kwargs)
		data = self._terraform_data()
		context['section'] = 'groups'
		context['groups'] = data['groups']
		context.update(self._base_context())
		return context


class AccountUserSyncView(View):
	def post(self, request, *args, **kwargs):
		try:
			result = DynatraceAccountSyncService().sync_users()
		except Exception as exc:
			messages.error(request, f'IAM-Sync fehlgeschlagen: {exc}')
		else:
			messages.success(
				request,
				f"IAM-Sync abgeschlossen. Neu: {result['created']}, aktualisiert: {result['updated']}",
			)
		return redirect('account_management:user_list')
