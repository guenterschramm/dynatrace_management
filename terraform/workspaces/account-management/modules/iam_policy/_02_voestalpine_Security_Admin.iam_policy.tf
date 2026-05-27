resource "dynatrace_iam_policy" "_02_voestalpine_Security_Admin" {
  name            = "02 voestalpine Security Admin"
  # description   = ""
  account         = "c65530cc-1621-455c-989d-22e43b2c00f5"
  # environment   = ""
  statement_query =<<-EOT
    ALLOW app-engine:apps:run;
    // Vulnerability service
    ALLOW vulnerability-service:vulnerabilities:read;
    ALLOW vulnerability-service:vulnerabilities:write;
  EOT
}
