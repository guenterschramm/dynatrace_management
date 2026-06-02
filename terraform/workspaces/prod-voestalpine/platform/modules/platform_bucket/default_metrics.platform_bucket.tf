resource "dynatrace_platform_bucket" "default_metrics" {
  name         = "default_metrics"
  display_name = "Default metrics"
  retention    = 462
  table        = "metrics"
}
