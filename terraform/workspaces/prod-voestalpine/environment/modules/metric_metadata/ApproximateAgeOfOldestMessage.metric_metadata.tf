resource "dynatrace_metric_metadata" "ApproximateAgeOfOldestMessage" {
  display_name = "ApproximateAgeOfOldestMessage"
  metric_id    = "metric-cloud.aws.sqs.ApproximateAgeOfOldestMessage.By.QueueName"
  unit         = "Seconds"
}
