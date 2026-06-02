resource "dynatrace_metric_metadata" "CapacityUtilization" {
  display_name = "CapacityUtilization"
  metric_id    = "metric-cloud.aws.appstreams.CapacityUtilization.By.Fleet"
  unit         = "Percent"
}
