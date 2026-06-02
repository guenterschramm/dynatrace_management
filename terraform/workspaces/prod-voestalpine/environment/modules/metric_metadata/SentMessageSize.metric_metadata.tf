resource "dynatrace_metric_metadata" "SentMessageSize" {
  display_name = "SentMessageSize"
  metric_id    = "metric-cloud.aws.sqs.SentMessageSize.By.QueueName"
  unit         = "Bytes"
}
