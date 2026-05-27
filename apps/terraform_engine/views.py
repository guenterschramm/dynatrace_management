from django.conf import settings
from django.contrib import messages
from django.shortcuts import get_object_or_404, redirect
from django.views import View
from django.views.generic import TemplateView

from .models import TerraformExecution, TerraformWorkspace
from .services import TerraformExecutionService, sync_terraform_workspaces


class TerraformOverviewView(TemplateView):
	template_name = 'terraform_engine/overview.html'

	def get_context_data(self, **kwargs):
		context = super().get_context_data(**kwargs)
		all_workspaces = list(TerraformWorkspace.objects.select_related('environment').all())
		account_workspace = None
		groups = {}
		for workspace in all_workspaces:
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
		return context


class TerraformSyncView(View):
	def post(self, request, pk, *args, **kwargs):
		workspace = get_object_or_404(TerraformWorkspace, pk=pk)
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
		return redirect('terraform_engine:overview')


class TerraformCommandView(View):
	command = None

	def post(self, request, pk, *args, **kwargs):
		workspace = get_object_or_404(TerraformWorkspace, pk=pk)
		result = TerraformExecutionService().execute(workspace, self.command)
		if result.returncode == 0:
			messages.success(request, f'Terraform {self.command} fuer {workspace.workspace_name} erfolgreich.')
		else:
			messages.error(request, f'Terraform {self.command} fuer {workspace.workspace_name} fehlgeschlagen.')
		return redirect('terraform_engine:overview')


class TerraformPlanView(TerraformCommandView):
	command = TerraformExecution.CommandType.PLAN
