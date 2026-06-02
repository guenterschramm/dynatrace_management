resource "dynatrace_metric_metadata" "QueueSize" {
  display_name = "QueueSize"
  metric_id    = "metric-cloud.aws.connect.QueueSize.By.InstanceId.MetricGroup.QueueName"
  unit         = "Count"
}
