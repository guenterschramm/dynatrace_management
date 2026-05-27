from django.core.management.base import BaseCommand

from apps.account_management.services import DynatraceAccountSyncService


class Command(BaseCommand):
    help = 'Synchronisiert Dynatrace Account Users in die lokale Datenbank.'

    def handle(self, *args, **options):
        result = DynatraceAccountSyncService().sync_users()
        self.stdout.write(
            self.style.SUCCESS(
                f"IAM-Sync abgeschlossen. Neu: {result['created']}, aktualisiert: {result['updated']}"
            )
        )