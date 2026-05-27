resource "dynatrace_iam_policy" "Kubernetes" {
  name            = "Kubernetes"
  # description   = ""
  account         = "c65530cc-1621-455c-989d-22e43b2c00f5"
  # environment   = ""
  statement_query =<<-EOT
    ALLOW davis:analyzers:execute;
    ALLOW davis-copilot:conversations:execute;
    ALLOW settings:objects:read;
    ALLOW settings:objects:write;
    ALLOW hub:catalog:read;
    ALLOW state:user-app-states:read;
    ALLOW state:user-app-states:write;
    ALLOW state:app-states:read;
    ALLOW state:app-states:write;
    ALLOW state:user-app-states:delete;
    ALLOW storage:buckets:read;
    ALLOW storage:entities:read;
    ALLOW storage:events:read;
    ALLOW storage:logs:read;
    ALLOW storage:metrics:read;
    ALLOW storage:fieldsets:read;
    ALLOW unified-analysis:screen-definition:read; ALLOW document:documents:read;
    ALLOW storage:filter-segments:read;
    ALLOW slo:objective-templates:read;
    ALLOW slo:slos:read;
    ALLOW slo:slos:write;
  EOT
}
