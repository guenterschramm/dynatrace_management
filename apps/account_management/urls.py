from django.urls import path

from .views import (
    AccountBoundaryListView,
    AccountIamOverviewView,
    AccountPolicyListView,
    AccountRoleListView,
    AccountUserListView,
)

app_name = 'account_management'

urlpatterns = [
    path('iam/', AccountIamOverviewView.as_view(), name='iam_overview'),
    path('', AccountUserListView.as_view(), name='user_list'),
    path('policies/', AccountPolicyListView.as_view(), name='policy_list'),
    path('boundaries/', AccountBoundaryListView.as_view(), name='boundary_list'),
    path('roles/', AccountRoleListView.as_view(), name='role_list'),
]