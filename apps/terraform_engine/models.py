from pathlib import Path

from django.conf import settings
from django.db import models

from apps.core.models import TimeStampedModel


class TerraformWorkspace(TimeStampedModel):
	class WorkspaceScope(models.TextChoices):
		ACCOUNT_MANAGEMENT = 'account_management', 'Account Management'
		ENVIRONMENT = 'environment', 'Environment'
		PLATFORM = 'platform', 'Platform'

	class WorkspaceStatus(models.TextChoices):
		PENDING = 'pending', 'Pending'
		READY = 'ready', 'Ready'
		INIT_RUNNING = 'init_running', 'Init running'
		PLAN_RUNNING = 'plan_running', 'Plan running'
		APPLY_RUNNING = 'apply_running', 'Apply running'
		FAILED = 'failed', 'Failed'

	environment = models.ForeignKey(
		'environments.Environment',
		null=True,
		blank=True,
		on_delete=models.CASCADE,
		related_name='terraform_workspaces',
	)
	workspace_name = models.SlugField(max_length=120, unique=True)
	scope = models.CharField(
		max_length=32,
		choices=WorkspaceScope.choices,
		default=WorkspaceScope.ENVIRONMENT,
	)
	state_path = models.CharField(max_length=255, blank=True)
	last_command = models.CharField(max_length=120, blank=True)
	status = models.CharField(
		max_length=32,
		choices=WorkspaceStatus.choices,
		default=WorkspaceStatus.PENDING,
	)
	last_run_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		ordering = ['workspace_name']

	def __str__(self):
		return self.workspace_name

	def save(self, *args, **kwargs):
		if not self.state_path:
			self.state_path = str(self.workspace_dir / 'terraform.tfstate')
		super().save(*args, **kwargs)
		self.workspace_dir.mkdir(parents=True, exist_ok=True)

	@property
	def workspace_dir(self):
		root = Path(settings.DT_TERRAFORM_ROOT)
		if self.scope == self.WorkspaceScope.ACCOUNT_MANAGEMENT:
			return root / 'account-management'
		if self.environment is None:
			return root / self.workspace_name
		return root / self.workspace_group / self.scope

	@property
	def workspace_group(self):
		if self.scope == self.WorkspaceScope.ACCOUNT_MANAGEMENT:
			return 'account-management'
		if self.environment is None:
			return self.workspace_name
		environment_name = self.environment.name.lower()
		if environment_name.startswith('test'):
			return 'test-voestalpine'
		if environment_name.startswith('prod'):
			return 'prod-voestalpine'
		return self.environment.workspace_slug

	@property
	def scope_badge(self):
		return self.get_scope_display()


class TerraformExecution(TimeStampedModel):
	class CommandType(models.TextChoices):
		INIT = 'init', 'Init'
		PLAN = 'plan', 'Plan'

	workspace = models.ForeignKey(
		TerraformWorkspace,
		on_delete=models.CASCADE,
		related_name='executions',
	)
	command = models.CharField(max_length=16, choices=CommandType.choices)
	exit_code = models.IntegerField()
	stdout = models.TextField(blank=True)
	stderr = models.TextField(blank=True)
	succeeded = models.BooleanField(default=False)

	class Meta:
		ordering = ['-created_at']

	def __str__(self):
		return f'{self.workspace.workspace_name} {self.command} ({self.exit_code})'
