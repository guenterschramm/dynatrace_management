resource "dynatrace_metric_metadata" "ConnectionCount" {
  display_name = "ConnectionCount"
  metric_id    = "metric-cloud.aws.amazonmq.ConnectionCount.By.Broker"
  unit         = "Count"
}
