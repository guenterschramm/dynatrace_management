resource "dynatrace_metric_metadata" "RejectedPackets" {
  display_name = "RejectedPackets"
  metric_id    = "metric-cloud.aws.networkfirewall.RejectedPackets.By.FirewallName"
  unit         = "Count"
}
