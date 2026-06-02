resource "dynatrace_platform_bucket" "xecm_logs" {
  name         = "xecm_logs"
  display_name = "xECM Steel Production Logs"
  retention    = 14
  table        = "logs"
}
