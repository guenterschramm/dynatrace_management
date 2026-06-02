resource "dynatrace_platform_bucket" "xecm_steel_logs" {
  name         = "xecm_steel_logs"
  display_name = "xECM Steel Production Logs"
  retention    = 14
  table        = "logs"
}
