from django.contrib import admin

from .models import TerraformExecution, TerraformWorkspace


@admin.register(TerraformWorkspace)
class TerraformWorkspaceAdmin(admin.ModelAdmin):
	list_display = ('workspace_name', 'scope', 'environment', 'status', 'last_command', 'updated_at')
	list_filter = ('scope', 'status')
	search_fields = ('workspace_name', 'environment__name')


@admin.register(TerraformExecution)
class TerraformExecutionAdmin(admin.ModelAdmin):
	list_display = ('workspace', 'command', 'exit_code', 'succeeded', 'created_at')
	list_filter = ('command', 'succeeded')
	search_fields = ('workspace__workspace_name', 'stdout', 'stderr')
