resource "dynatrace_platform_bucket" "default_logs" {
  name         = "default_logs"
  display_name = "Logs"
  retention    = 35
  table        = "logs"
}
