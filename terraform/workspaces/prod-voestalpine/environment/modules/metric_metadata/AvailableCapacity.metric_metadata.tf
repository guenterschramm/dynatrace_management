resource "dynatrace_metric_metadata" "AvailableCapacity" {
  display_name = "AvailableCapacity"
  metric_id    = "metric-cloud.aws.appstreams.AvailableCapacity.By.Fleet"
  unit         = "Count"
}
