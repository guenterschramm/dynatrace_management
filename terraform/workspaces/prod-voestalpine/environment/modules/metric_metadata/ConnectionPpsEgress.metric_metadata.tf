resource "dynatrace_metric_metadata" "ConnectionPpsEgress" {
  display_name = "ConnectionPpsEgress"
  metric_id    = "metric-cloud.aws.dx.ConnectionPpsEgress.By.ConnectionId"
  unit         = "Count"
}
