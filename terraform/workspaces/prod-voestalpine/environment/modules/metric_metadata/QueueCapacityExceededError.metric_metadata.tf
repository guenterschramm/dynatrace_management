resource "dynatrace_metric_metadata" "QueueCapacityExceededError" {
  display_name = "QueueCapacityExceededError"
  metric_id    = "metric-cloud.aws.connect.QueueCapacityExceededError.By.InstanceId.MetricGroup.QueueName"
  unit         = "Count"
}
