resource "dynatrace_platform_bucket" "dt_system_metrics" {
  name         = "dt_system_metrics"
  display_name = "System metrics (180 days)"
  retention    = 180
  table        = "metrics"
}
