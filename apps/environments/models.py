from django.db import models

from apps.core.models import TimeStampedModel


class Environment(TimeStampedModel):
	class EnvironmentType(models.TextChoices):
		DEVELOPMENT = 'development', 'Development'
		STAGING = 'staging', 'Staging'
		PRODUCTION = 'production', 'Production'

	name = models.CharField(max_length=120, unique=True)
	display_name = models.CharField(max_length=160, blank=True)
	environment_url = models.URLField(unique=True)
	tenant_id = models.CharField(max_length=120, blank=True)
	environment_type = models.CharField(
		max_length=32,
		choices=EnvironmentType.choices,
		default=EnvironmentType.DEVELOPMENT,
	)
	api_token = models.CharField(max_length=255)
	platform_token = models.CharField(max_length=255, blank=True)
	account_uuid = models.CharField(max_length=120, blank=True)
	is_active = models.BooleanField(default=True)
	notes = models.TextField(blank=True)

	class Meta:
		ordering = ['name']

	def __str__(self):
		return self.display_name or self.name

	@property
	def workspace_slug(self):
		return self.name.lower().replace(' ', '-').replace('_', '-')

	@property
	def masked_api_token(self):
		if len(self.api_token) <= 8:
			return '*' * len(self.api_token)
		return f"{self.api_token[:4]}...{self.api_token[-4:]}"
