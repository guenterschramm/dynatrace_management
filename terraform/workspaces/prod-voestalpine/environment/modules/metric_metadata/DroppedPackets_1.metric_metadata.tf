resource "dynatrace_metric_metadata" "DroppedPackets_1" {
  display_name = "DroppedPackets"
  metric_id    = "metric-cloud.aws.networkfirewall.DroppedPackets.By.CustomAction.EndpointName.Engine.FirewallName"
  unit         = "Count"
}
