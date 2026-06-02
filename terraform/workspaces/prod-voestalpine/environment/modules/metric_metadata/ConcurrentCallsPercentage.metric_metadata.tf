resource "dynatrace_metric_metadata" "ConcurrentCallsPercentage" {
  display_name = "ConcurrentCallsPercentage"
  metric_id    = "metric-cloud.aws.connect.ConcurrentCallsPercentage.By.InstanceId.MetricGroup"
  unit         = "Percent"
}
