resource "dynatrace_metric_metadata" "MissedCalls" {
  display_name = "MissedCalls"
  metric_id    = "metric-cloud.aws.connect.MissedCalls.By.InstanceId.MetricGroup"
  unit         = "Count"
}
