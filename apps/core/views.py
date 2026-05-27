from django.views.generic import TemplateView


class HomeView(TemplateView):
	template_name = 'core/home.html'

	def get_context_data(self, **kwargs):
		context = super().get_context_data(**kwargs)
		context['sections'] = [
			{
				'title': 'Environments',
				'description': 'Verwalten Sie Dynatrace-Umgebungen, URLs und Zugangsdaten zentral.',
			},
			{
				'title': 'Account Management',
				'description': 'User-, Gruppen- und Berechtigungsverwaltung ueber die Dynatrace IAM APIs.',
			},
			{
				'title': 'Terraform Engine',
				'description': 'Generiert Terraform-Workspaces und fuehrt plan/apply fuer jede Umgebung aus.',
			},
		]
		return context
