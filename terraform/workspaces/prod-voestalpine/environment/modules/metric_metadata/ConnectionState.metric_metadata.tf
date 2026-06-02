resource "dynatrace_metric_metadata" "ConnectionState" {
  display_name = "ConnectionState"
  metric_id    = "metric-cloud.aws.dx.ConnectionState.By.ConnectionId"
  unit         = "Count"
}
