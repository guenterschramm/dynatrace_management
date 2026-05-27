from django.apps import AppConfig


class EnvConfigConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'apps.env_config'
    label = 'env_config'
