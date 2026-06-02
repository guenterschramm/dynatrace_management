resource "dynatrace_platform_bucket" "xecm_steel_logs_short" {
  name         = "xecm_steel_logs_short"
  display_name = "xECM Steel Production Logs with high Volume"
  retention    = 8
  table        = "logs"
}
