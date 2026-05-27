from django.contrib import admin

from .models import AccountUser


@admin.register(AccountUser)
class AccountUserAdmin(admin.ModelAdmin):
	list_display = ('email', 'full_name', 'status', 'user_type', 'updated_at')
	search_fields = ('email', 'full_name', 'user_uuid')
	list_filter = ('status', 'user_type')
