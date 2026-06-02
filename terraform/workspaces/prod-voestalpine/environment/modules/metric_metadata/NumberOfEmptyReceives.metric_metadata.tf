resource "dynatrace_metric_metadata" "NumberOfEmptyReceives" {
  display_name = "NumberOfEmptyReceives"
  metric_id    = "metric-cloud.aws.sqs.NumberOfEmptyReceives.By.QueueName"
  unit         = "Count"
}
