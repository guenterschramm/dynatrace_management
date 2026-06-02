resource "dynatrace_metric_metadata" "ConnectionBpsIngress" {
  display_name = "ConnectionBpsIngress"
  metric_id    = "metric-cloud.aws.dx.ConnectionBpsIngress.By.ConnectionId"
  unit         = "BitsPerSecond"
}
