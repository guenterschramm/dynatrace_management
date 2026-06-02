from django.contrib import admin
from django.urls import include, path

from apps.core.views import HomeView
from apps.terraform_engine.views import EnvironmentOverviewView, PlatformOverviewView

urlpatterns = [
    path('', HomeView.as_view(), name='home'),
    path('admin/', admin.site.urls),
    path('account-management/', include('apps.account_management.urls')),
    path('environment/', EnvironmentOverviewView.as_view(), name='environment_overview'),
    path('platform/', PlatformOverviewView.as_view(), name='platform_overview'),
    path('environments/', include('apps.environments.urls')),
    path('terraform/', include('apps.terraform_engine.urls')),
]
