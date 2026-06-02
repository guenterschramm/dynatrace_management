resource "dynatrace_metric_metadata" "NumberOfMessagesDeleted" {
  display_name = "NumberOfMessagesDeleted"
  metric_id    = "metric-cloud.aws.sqs.NumberOfMessagesDeleted.By.QueueName"
  unit         = "Count"
}
