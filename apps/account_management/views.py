from django.contrib import messages
from django.shortcuts import redirect
from django.views import View
from django.views.generic import TemplateView

from .services import DynatraceAccountSyncService, TerraformAccountDataService


class TerraformAccountContextMixin:
	def _terraform_data(self):
		return TerraformAccountDataService().load()

	def _base_context(self):
		data = self._terraform_data()
		return {
			'source_root': data['source_root'],
			'resource_count': data['resource_count'],
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
		context['section'] = 'roles'
		context['roles'] = data['roles']
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
