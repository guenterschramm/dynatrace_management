resource "dynatrace_platform_bucket" "xecm_corp_logs" {
  name         = "xecm_corp_logs"
  display_name = "xECM Corporate Production Logs"
  retention    = 14
  table        = "logs"
}
