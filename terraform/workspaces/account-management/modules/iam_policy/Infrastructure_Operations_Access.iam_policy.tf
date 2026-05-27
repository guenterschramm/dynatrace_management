resource "dynatrace_iam_policy" "Infrastructure_Operations_Access" {
  name            = "Infrastructure & Operations Access"
  description     = "Grants access to the Infrastructure and Operations app"
  account         = "c65530cc-1621-455c-989d-22e43b2c00f5"
  # environment   = ""
  statement_query =<<-EOT
    ALLOW 
    storage:logs:read,
    storage:events:read,
    storage:buckets:read,
    storage:metrics:read,
    storage:entities:read,
    storage:fieldsets:read,
    state:user-app-states:read,
    state:user-app-states:write,
    settings:objects:read,
    settings:objects:write,
    slo:objective-templates:read,
    slo:slos:read,
    slo:slos:write,
    davis:analyzers:execute,
    unified-analysis:screen-definition:read,
    app-settings:objects:read,
    app-settings:objects:write,
    storage:filter-segments:read,
    storage:security.events:read,
    storage:bizevents:read,
    storage:spans:read,
    storage:user.sessions:read,
    storage:user.events:read,
    storage:files:read,
    storage:smartscape:read;
  EOT
}
