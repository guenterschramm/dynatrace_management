from django.db.models.signals import post_save
from django.dispatch import receiver

from apps.terraform_engine.services import sync_terraform_workspaces

from .models import Environment


@receiver(post_save, sender=Environment)
def ensure_workspace(sender, instance, created, **kwargs):
    sync_terraform_workspaces()