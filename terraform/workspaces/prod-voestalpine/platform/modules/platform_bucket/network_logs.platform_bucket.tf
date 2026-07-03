resource "dynatrace_platform_bucket" "network_logs" {
  name         = "network_logs"
  display_name = "Network Logs"
  retention    = 30
  table        = "logs"
}
