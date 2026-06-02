resource "dynatrace_metric_metadata" "NumberOfMessagesReceived" {
  display_name = "NumberOfMessagesReceived"
  metric_id    = "metric-cloud.aws.sqs.NumberOfMessagesReceived.By.QueueName"
  unit         = "Count"
}
