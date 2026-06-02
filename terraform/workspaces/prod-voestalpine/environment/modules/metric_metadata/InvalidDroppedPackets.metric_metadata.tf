resource "dynatrace_metric_metadata" "InvalidDroppedPackets" {
  display_name = "InvalidDroppedPackets"
  metric_id    = "metric-cloud.aws.networkfirewall.InvalidDroppedPackets.By.FirewallName"
  unit         = "Count"
}
