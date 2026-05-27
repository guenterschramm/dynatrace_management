resource "dynatrace_iam_policy" "test_IO" {
  name            = "test_IO"
  # description   = ""
  account         = "c65530cc-1621-455c-989d-22e43b2c00f5"
  # environment   = ""
  statement_query =<<-EOT
    ALLOW storage:logs:read;
    ALLOW storage:events:read;
    ALLOW storage:buckets:read;
    ALLOW storage:metrics:read;
    ALLOW storage:entities:read;
    ALLOW storage:fieldsets:read;
    ALLOW state:user-app-states:read;
    ALLOW state:user-app-states:write;
    ALLOW settings:objects:read;
    ALLOW settings:objects:write;
    ALLOW slo:objective-templates:read;
    ALLOW slo:slos:read;
    ALLOW slo:slos:write;
    ALLOW davis:analyzers:execute;
    ALLOW unified-analysis:screen-definition:read;
    ALLOW app-settings:objects:read;
    ALLOW app-settings:objects:write;
    ALLOW storage:filter-segments:read;
    ALLOW storage:security.events:read;
    ALLOW storage:bizevents:read;
    ALLOW storage:spans:read;
    ALLOW storage:user.sessions:read;
    ALLOW storage:user.events:read;
    ALLOW storage:files:read;
    ALLOW storage:smartscape:read;
  EOT
}
