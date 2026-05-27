from django.apps import AppConfig


class EnvironmentsConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'apps.environments'
    label = 'environments'

    def ready(self):
        from . import signals  # noqa: F401
