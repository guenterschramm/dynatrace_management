from django.contrib.messages.views import SuccessMessageMixin
from django.urls import reverse_lazy
from django.views.generic import CreateView, ListView, UpdateView

from .forms import EnvironmentForm
from .models import Environment


class EnvironmentListView(ListView):
    model = Environment
    context_object_name = 'environments'
    template_name = 'environments/environment_list.html'

    def get_queryset(self):
        return Environment.objects.prefetch_related('terraform_workspaces').all()


class EnvironmentCreateView(SuccessMessageMixin, CreateView):
    form_class = EnvironmentForm
    model = Environment
    template_name = 'environments/environment_form.html'
    success_url = reverse_lazy('environments:list')
    success_message = 'Environment erfolgreich angelegt.'


class EnvironmentUpdateView(SuccessMessageMixin, UpdateView):
    form_class = EnvironmentForm
    model = Environment
    template_name = 'environments/environment_form.html'
    success_url = reverse_lazy('environments:list')
    success_message = 'Environment erfolgreich aktualisiert.'
