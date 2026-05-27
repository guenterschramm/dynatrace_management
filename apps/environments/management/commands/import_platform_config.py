from django.conf import settings
from django.core.management.base import BaseCommand

from apps.environments.models import Environment


class Command(BaseCommand):
    help = 'Importiert Environments aus config/platform.config in die Datenbank.'

    def handle(self, *args, **options):
        imported = 0
        updated = 0

        for entry in settings.DT_DEFAULT_ENVIRONMENTS:
            environment, created = Environment.objects.update_or_create(
                name=entry['name'],
                defaults={
                    'display_name': entry['display_name'],
                    'environment_url': entry['environment_url'],
                    'environment_type': entry['environment_type'],
                    'api_token': entry['api_token'],
                    'platform_token': entry['platform_token'],
                    'account_uuid': entry['account_uuid'],
                    'is_active': True,
                },
            )
            if created:
                imported += 1
                self.stdout.write(self.style.SUCCESS(f'Angelegt: {environment.name}'))
            else:
                updated += 1
                self.stdout.write(self.style.WARNING(f'Aktualisiert: {environment.name}'))

        self.stdout.write(self.style.SUCCESS(f'Import abgeschlossen. Neu: {imported}, aktualisiert: {updated}'))