resource "dynatrace_metric_metadata" "TotalMessageCount" {
  display_name = "TotalMessageCount"
  metric_id    = "metric-cloud.aws.amazonmq.TotalMessageCount.By.Broker"
  unit         = "Count"
}
