resource "dynatrace_platform_bucket" "database_logs" {
  name         = "database_logs"
  display_name = "database_logs"
  retention    = 14
  table        = "logs"
}
