resource "dynatrace_platform_bucket" "bee4it_logs" {
  name         = "bee4it_logs"
  display_name = "Bee4IT Production Logs"
  retention    = 14
  table        = "logs"
}
