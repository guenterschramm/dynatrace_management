resource "dynatrace_metric_metadata" "ApproximateNumberOfMessagesNotVisible" {
  display_name = "ApproximateNumberOfMessagesNotVisible"
  metric_id    = "metric-cloud.aws.sqs.ApproximateNumberOfMessagesNotVisible.By.QueueName"
  unit         = "Count"
}
