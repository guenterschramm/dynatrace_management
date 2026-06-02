resource "dynatrace_metric_metadata" "TLSRejectedPackets" {
  display_name = "TLSRejectedPackets"
  metric_id    = "metric-cloud.aws.networkfirewall.TLSRejectedPackets.By.FirewallName"
  unit         = "Count"
}
