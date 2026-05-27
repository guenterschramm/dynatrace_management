from django.urls import path

from .views import TerraformOverviewView, TerraformPlanView, TerraformSyncView

app_name = 'terraform_engine'

urlpatterns = [
	path('', TerraformOverviewView.as_view(), name='overview'),
	path('<int:pk>/sync/', TerraformSyncView.as_view(), name='sync'),
	path('<int:pk>/plan/', TerraformPlanView.as_view(), name='plan'),
]