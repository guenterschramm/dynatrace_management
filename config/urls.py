from django.contrib import admin
from django.urls import include, path

from apps.core.views import HomeView

urlpatterns = [
    path('', HomeView.as_view(), name='home'),
    path('admin/', admin.site.urls),
    path('account-management/', include('apps.account_management.urls')),
    path('environments/', include('apps.environments.urls')),
    path('terraform/', include('apps.terraform_engine.urls')),
]
