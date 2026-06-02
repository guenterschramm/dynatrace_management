resource "dynatrace_metric_metadata" "LongestQueueWaitTime" {
  display_name = "LongestQueueWaitTime"
  metric_id    = "metric-cloud.aws.connect.LongestQueueWaitTime.By.InstanceId.MetricGroup.QueueName"
  unit         = "Seconds"
}
