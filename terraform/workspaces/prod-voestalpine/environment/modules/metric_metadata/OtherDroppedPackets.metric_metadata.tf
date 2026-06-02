resource "dynatrace_metric_metadata" "OtherDroppedPackets" {
  display_name = "OtherDroppedPackets"
  metric_id    = "metric-cloud.aws.networkfirewall.OtherDroppedPackets.By.FirewallName"
  unit         = "Count"
}
