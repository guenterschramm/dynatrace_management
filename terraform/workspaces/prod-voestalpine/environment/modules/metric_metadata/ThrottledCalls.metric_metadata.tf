resource "dynatrace_metric_metadata" "ThrottledCalls" {
  display_name = "ThrottledCalls"
  metric_id    = "metric-cloud.aws.connect.ThrottledCalls.By.InstanceId.MetricGroup"
  unit         = "Count"
}
