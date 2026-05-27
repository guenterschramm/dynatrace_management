from django import forms

from .models import Environment


class EnvironmentForm(forms.ModelForm):
    class Meta:
        model = Environment
        fields = [
            'name',
            'display_name',
            'environment_url',
            'tenant_id',
            'environment_type',
            'api_token',
            'platform_token',
            'account_uuid',
            'is_active',
            'notes',
        ]
        widgets = {
            'api_token': forms.PasswordInput(render_value=True),
            'platform_token': forms.PasswordInput(render_value=True),
            'notes': forms.Textarea(attrs={'rows': 4}),
        }