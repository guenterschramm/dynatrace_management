resource "dynatrace_metric_metadata" "ApproximateNumberOfMessagesVisible" {
  display_name = "ApproximateNumberOfMessagesVisible"
  metric_id    = "metric-cloud.aws.sqs.ApproximateNumberOfMessagesVisible.By.QueueName"
  unit         = "Count"
}
