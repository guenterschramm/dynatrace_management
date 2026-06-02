resource "dynatrace_metric_metadata" "TLSReceivedPackets" {
  display_name = "TLSReceivedPackets"
  metric_id    = "metric-cloud.aws.networkfirewall.TLSReceivedPackets.By.FirewallName"
  unit         = "Count"
}
