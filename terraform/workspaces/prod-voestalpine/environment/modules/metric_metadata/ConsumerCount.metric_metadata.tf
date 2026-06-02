resource "dynatrace_metric_metadata" "ConsumerCount" {
  display_name = "ConsumerCount"
  metric_id    = "metric-cloud.aws.amazonmq.ConsumerCount.By.Broker"
  unit         = "Count"
}
