resource "dynatrace_metric_metadata" "ActiveUserSessionCapacity" {
  display_name = "ActiveUserSessionCapacity"
  metric_id    = "metric-cloud.aws.appstreams.ActiveUserSessionCapacity.By.Fleet"
  unit         = "Count"
}
