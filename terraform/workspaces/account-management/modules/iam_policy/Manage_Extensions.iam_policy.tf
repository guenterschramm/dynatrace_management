resource "dynatrace_iam_policy" "Manage_Extensions" {
  name            = "Manage Extensions"
  # description   = ""
  account         = "c65530cc-1621-455c-989d-22e43b2c00f5"
  # environment   = ""
  statement_query =<<-EOT
    ALLOW hub:catalog:read;
    ALLOW storage:entities:read;
    ALLOW storage:logs:read;
    ALLOW storage:buckets:read;
    ALLOW state:user-app-states:read;
    ALLOW storage:system:read;
    ALLOW settings:objects:read;
    ALLOW state:user-app-states:write;
    ALLOW state:user-app-states:read;
    EOT
}
