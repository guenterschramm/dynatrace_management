resource "dynatrace_metric_metadata" "CurrentConnectionsCount" {
  display_name = "CurrentConnectionsCount"
  metric_id    = "metric-cloud.aws.amazonmq.CurrentConnectionsCount.By.Broker"
  unit         = "Count"
}
