resource "dynatrace_metric_metadata" "CallsPerInterval" {
  display_name = "CallsPerInterval"
  metric_id    = "metric-cloud.aws.connect.CallsPerInterval.By.InstanceId.MetricGroup"
  unit         = "Count"
}
