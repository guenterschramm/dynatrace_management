resource "dynatrace_platform_bucket" "pam_logs" {
  name         = "pam_logs"
  display_name = "PAM Logfiles"
  retention    = 14
  table        = "logs"
}
