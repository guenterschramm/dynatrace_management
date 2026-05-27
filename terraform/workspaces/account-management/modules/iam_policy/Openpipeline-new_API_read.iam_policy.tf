resource "dynatrace_iam_policy" "Openpipeline-new_API_read" {
  name            = "Openpipeline - new API (read)"
  description     = "Read permissions for openpipeline"
  account         = "c65530cc-1621-455c-989d-22e43b2c00f5"
  # environment   = ""
  statement_query =<<-EOT
    ALLOW settings:schemas:read;
    ALLOW settings:objects:read;
    EOT
}
