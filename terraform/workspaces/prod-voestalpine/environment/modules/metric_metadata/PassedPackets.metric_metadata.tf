resource "dynatrace_metric_metadata" "PassedPackets" {
  display_name = "PassedPackets"
  metric_id    = "metric-cloud.aws.networkfirewall.PassedPackets.By.FirewallName"
  unit         = "Count"
}
