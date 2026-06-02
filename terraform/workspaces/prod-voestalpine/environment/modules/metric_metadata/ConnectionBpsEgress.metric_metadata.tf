resource "dynatrace_metric_metadata" "ConnectionBpsEgress" {
  display_name = "ConnectionBpsEgress"
  metric_id    = "metric-cloud.aws.dx.ConnectionBpsEgress.By.ConnectionId"
  unit         = "BitsPerSecond"
}
