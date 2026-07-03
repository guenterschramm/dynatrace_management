resource "dynatrace_platform_bucket" "hpm_vmes_logs" {
  name         = "hpm_vmes_logs"
  display_name = "HPM VMES Logfiles"
  retention    = 14
  table        = "logs"
}
