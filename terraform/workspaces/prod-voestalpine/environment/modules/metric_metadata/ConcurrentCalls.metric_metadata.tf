resource "dynatrace_metric_metadata" "ConcurrentCalls" {
  display_name = "ConcurrentCalls"
  metric_id    = "metric-cloud.aws.connect.ConcurrentCalls.By.InstanceId.MetricGroup"
  unit         = "Count"
}
