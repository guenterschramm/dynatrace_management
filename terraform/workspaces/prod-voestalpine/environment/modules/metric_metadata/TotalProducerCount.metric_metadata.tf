resource "dynatrace_metric_metadata" "TotalProducerCount" {
  display_name = "TotalProducerCount"
  metric_id    = "metric-cloud.aws.amazonmq.TotalProducerCount.By.Broker"
  unit         = "Count"
}
