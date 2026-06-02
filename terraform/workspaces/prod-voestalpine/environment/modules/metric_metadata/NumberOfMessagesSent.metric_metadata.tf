resource "dynatrace_metric_metadata" "NumberOfMessagesSent" {
  display_name = "NumberOfMessagesSent"
  metric_id    = "metric-cloud.aws.sqs.NumberOfMessagesSent.By.QueueName"
  unit         = "Count"
}
