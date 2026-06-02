resource "dynatrace_metric_metadata" "TLSPassedPackets" {
  display_name = "TLSPassedPackets"
  metric_id    = "metric-cloud.aws.networkfirewall.TLSPassedPackets.By.FirewallName"
  unit         = "Count"
}
