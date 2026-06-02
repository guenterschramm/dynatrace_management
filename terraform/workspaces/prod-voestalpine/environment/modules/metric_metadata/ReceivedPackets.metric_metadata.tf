resource "dynatrace_metric_metadata" "ReceivedPackets" {
  display_name = "ReceivedPackets"
  metric_id    = "metric-cloud.aws.networkfirewall.ReceivedPackets.By.FirewallName"
  unit         = "Count"
}
