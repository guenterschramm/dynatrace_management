from django.contrib import messages
from django.shortcuts import redirect
from django.views import View
from django.views.generic import ListView, TemplateView

from .models import AccountUser
from .services import DynatraceAccountSyncService


class AccountUserListView(ListView):
	model = AccountUser
	context_object_name = 'users'
	template_name = 'account_management/user_list.html'

	def get_context_data(self, **kwargs):
		context = super().get_context_data(**kwargs)
		context['section'] = 'users'
		return context


class AccountPolicyListView(TemplateView):
	template_name = 'account_management/policy_list.html'

	def get_context_data(self, **kwargs):
		context = super().get_context_data(**kwargs)
		context['section'] = 'policies'
		return context


class AccountBoundaryListView(TemplateView):
	template_name = 'account_management/boundary_list.html'

	def get_context_data(self, **kwargs):
		context = super().get_context_data(**kwargs)
		context['section'] = 'boundaries'
		return context


class AccountRoleListView(TemplateView):
	template_name = 'account_management/role_list.html'

	def get_context_data(self, **kwargs):
		context = super().get_context_data(**kwargs)
		context['section'] = 'roles'
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
