from django.contrib import admin

from .models import Environment


@admin.register(Environment)
class EnvironmentAdmin(admin.ModelAdmin):
	list_display = ('name', 'environment_type', 'tenant_id', 'is_active', 'updated_at')
	list_filter = ('environment_type', 'is_active')
	search_fields = ('name', 'display_name', 'tenant_id', 'account_uuid')
