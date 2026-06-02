resource "dynatrace_metric_metadata" "PublishRate" {
  display_name = "PublishRate"
  metric_id    = "metric-cloud.aws.amazonmq.PublishRate.By.Broker"
  unit         = "Count"
}
