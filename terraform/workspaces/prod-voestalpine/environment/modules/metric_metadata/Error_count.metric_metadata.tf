resource "dynatrace_metric_metadata" "Error_count" {
  description  = "Error count"
  display_name = "Error count"
  metric_id    = "metric-tomcat.errorCount.count"
  unit         = "Count"
}
