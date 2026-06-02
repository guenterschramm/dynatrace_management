resource "dynatrace_metric_metadata" "VirtualInterfaceBpsEgress" {
  display_name = "VirtualInterfaceBpsEgress"
  metric_id    = "metric-cloud.aws.dx.VirtualInterfaceBpsEgress.By.ConnectionId.VirtualInterfaceId"
  unit         = "BitsPerSecond"
}
