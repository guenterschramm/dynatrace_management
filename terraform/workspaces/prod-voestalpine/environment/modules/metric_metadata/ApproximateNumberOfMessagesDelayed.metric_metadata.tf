resource "dynatrace_metric_metadata" "ApproximateNumberOfMessagesDelayed" {
  display_name = "ApproximateNumberOfMessagesDelayed"
  metric_id    = "metric-cloud.aws.sqs.ApproximateNumberOfMessagesDelayed.By.QueueName"
  unit         = "Count"
}
