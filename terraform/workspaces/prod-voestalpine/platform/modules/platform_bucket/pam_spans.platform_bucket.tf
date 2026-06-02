resource "dynatrace_platform_bucket" "pam_spans" {
  name         = "pam_spans"
  display_name = "PAM - Transaction Data"
  retention    = 10
  table        = "spans"
}
