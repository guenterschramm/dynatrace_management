resource "dynatrace_platform_bucket" "xecm_logs_short" {
  name         = "xecm_logs_short"
  display_name = "xECM Steel Production Logs with high volume"
  retention    = 8
  table        = "logs"
}
