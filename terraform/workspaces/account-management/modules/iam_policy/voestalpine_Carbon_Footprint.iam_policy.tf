resource "dynatrace_iam_policy" "voestalpine_Carbon_Footprint" {
  name            = "voestalpine Carbon Footprint"
  # description   = ""
  account         = "c65530cc-1621-455c-989d-22e43b2c00f5"
  # environment   = ""
  statement_query =<<-EOT
    ALLOW storage:events:write;
    ALLOW iam:bindings:read;
  EOT
}
