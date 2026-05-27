from django.db import models

from apps.core.models import TimeStampedModel


class AccountUser(TimeStampedModel):
	user_uuid = models.CharField(max_length=120, unique=True)
	email = models.EmailField(blank=True)
	first_name = models.CharField(max_length=120, blank=True)
	last_name = models.CharField(max_length=120, blank=True)
	full_name = models.CharField(max_length=255, blank=True)
	status = models.CharField(max_length=64, blank=True)
	user_type = models.CharField(max_length=64, blank=True)
	raw_payload = models.JSONField(default=dict, blank=True)

	class Meta:
		ordering = ['email', 'full_name', 'user_uuid']

	def __str__(self):
		return self.email or self.full_name or self.user_uuid
