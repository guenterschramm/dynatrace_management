resource "dynatrace_platform_bucket" "default_database_monitoring" {
  name         = "default_database_monitoring"
  display_name = "Contains monitoring data for the database application"
  retention    = 35
  table        = "logs"
}
