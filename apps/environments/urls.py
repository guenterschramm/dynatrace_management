from django.urls import path

from .views import EnvironmentCreateView, EnvironmentListView, EnvironmentUpdateView

app_name = 'environments'

urlpatterns = [
    path('', EnvironmentListView.as_view(), name='list'),
    path('new/', EnvironmentCreateView.as_view(), name='create'),
    path('<int:pk>/edit/', EnvironmentUpdateView.as_view(), name='update'),
]