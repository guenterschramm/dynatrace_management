resource "dynatrace_metric_metadata" "ConnectionPpsIngress" {
  display_name = "ConnectionPpsIngress"
  metric_id    = "metric-cloud.aws.dx.ConnectionPpsIngress.By.ConnectionId"
  unit         = "Count"
}
