resource "dynatrace_metric_metadata" "TotalConsumerCount" {
  display_name = "TotalConsumerCount"
  metric_id    = "metric-cloud.aws.amazonmq.TotalConsumerCount.By.Broker"
  unit         = "Count"
}
