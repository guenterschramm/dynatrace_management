resource "dynatrace_generic_setting" "app_dynatrace_hub_manage_permissions" {
  schema = "app:dynatrace.hub:manage.permissions"
  scope  = "environment"
  value  = jsonencode({
      "description": "Günter Schramm",
      "email": "guenter.schramm@voestalpine.com"
    })
}
