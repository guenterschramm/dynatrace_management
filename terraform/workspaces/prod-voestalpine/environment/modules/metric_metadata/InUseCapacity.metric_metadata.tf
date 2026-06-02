resource "dynatrace_metric_metadata" "InUseCapacity" {
  display_name = "InUseCapacity"
  metric_id    = "metric-cloud.aws.appstreams.InUseCapacity.By.Fleet"
  unit         = "Count"
}
