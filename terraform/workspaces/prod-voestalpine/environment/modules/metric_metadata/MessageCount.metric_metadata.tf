resource "dynatrace_metric_metadata" "MessageCount" {
  display_name = "MessageCount"
  metric_id    = "metric-cloud.aws.amazonmq.MessageCount.By.Broker"
  unit         = "Count"
}
