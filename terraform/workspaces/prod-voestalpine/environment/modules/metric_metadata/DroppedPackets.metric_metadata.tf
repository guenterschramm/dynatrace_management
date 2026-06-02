resource "dynatrace_metric_metadata" "DroppedPackets" {
  display_name = "DroppedPackets"
  metric_id    = "metric-cloud.aws.networkfirewall.DroppedPackets.By.FirewallName"
  unit         = "Count"
}
