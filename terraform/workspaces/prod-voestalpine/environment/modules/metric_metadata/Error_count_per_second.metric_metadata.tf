resource "dynatrace_metric_metadata" "Error_count_per_second" {
  description  = "Error count per second"
  display_name = "Error count per second"
  metric_id    = "metric-func:tomcat.errorCountPerSecond"
  unit         = "PerSecond"
}
