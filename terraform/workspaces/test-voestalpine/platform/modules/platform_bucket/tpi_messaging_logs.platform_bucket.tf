resource "dynatrace_platform_bucket" "tpi_messaging_logs" {
  name         = "tpi_messaging_logs"
  display_name = "TPI Messaging Logs"
  retention    = 14
  table        = "logs"
}
