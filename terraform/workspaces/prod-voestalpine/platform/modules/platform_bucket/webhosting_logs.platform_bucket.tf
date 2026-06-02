resource "dynatrace_platform_bucket" "webhosting_logs" {
  name         = "webhosting_logs"
  display_name = "Webhosting Service Logs (14 days)"
  retention    = 14
  table        = "logs"
}
