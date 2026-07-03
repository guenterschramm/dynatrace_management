from django.urls import path

from .views import EnvironmentOverviewView, PlatformOverviewView, TerraformInitView, TerraformModuleDetailsView, TerraformModuleObjectUpdateView, TerraformOverviewView, TerraformPlanView, TerraformProgressView, TerraformSyncView

app_name = 'terraform_engine'

urlpatterns = [
	path('', TerraformOverviewView.as_view(), name='overview'),
	path('environment/', EnvironmentOverviewView.as_view(), name='environment_overview'),
	path('platform/', PlatformOverviewView.as_view(), name='platform_overview'),
	path('<int:pk>/sync/', TerraformSyncView.as_view(), name='sync'),
	path('<int:pk>/init/', TerraformInitView.as_view(), name='init'),
	path('<int:pk>/plan/', TerraformPlanView.as_view(), name='plan'),
	path('<int:pk>/progress/', TerraformProgressView.as_view(), name='progress'),
	path('<int:pk>/module/<str:module_name>/', TerraformModuleDetailsView.as_view(), name='module_details'),
	path('<int:pk>/module/<str:module_name>/object/', TerraformModuleObjectUpdateView.as_view(), name='module_object_update'),
]