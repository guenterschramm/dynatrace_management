resource "dynatrace_metric_metadata" "ConnectionErrorCount" {
  display_name = "ConnectionErrorCount"
  metric_id    = "metric-cloud.aws.dx.ConnectionErrorCount.By.ConnectionId"
  unit         = "Count"
}
