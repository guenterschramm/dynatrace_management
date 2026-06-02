resource "dynatrace_metric_metadata" "VirtualInterfaceBpsIngress" {
  display_name = "VirtualInterfaceBpsIngress"
  metric_id    = "metric-cloud.aws.dx.VirtualInterfaceBpsIngress.By.ConnectionId.VirtualInterfaceId"
  unit         = "BitsPerSecond"
}
