resource "dynatrace_platform_bucket" "xecm_corp_logs_short" {
  name         = "xecm_corp_logs_short"
  display_name = "xECM Corporate Production Logs with high volume"
  retention    = 8
  table        = "logs"
}
