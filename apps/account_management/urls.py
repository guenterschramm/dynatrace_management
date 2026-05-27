from django.urls import path

from .views import (
    AccountBoundaryListView,
    AccountPolicyListView,
    AccountRoleListView,
    AccountUserListView,
    AccountUserSyncView,
)

app_name = 'account_management'

urlpatterns = [
    path('', AccountUserListView.as_view(), name='user_list'),
    path('policies/', AccountPolicyListView.as_view(), name='policy_list'),
    path('boundaries/', AccountBoundaryListView.as_view(), name='boundary_list'),
    path('roles/', AccountRoleListView.as_view(), name='role_list'),
    path('sync/', AccountUserSyncView.as_view(), name='sync_users'),
]