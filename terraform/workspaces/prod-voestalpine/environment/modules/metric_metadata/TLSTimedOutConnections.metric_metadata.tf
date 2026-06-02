resource "dynatrace_metric_metadata" "TLSTimedOutConnections" {
  display_name = "TLSTimedOutConnections"
  metric_id    = "metric-cloud.aws.networkfirewall.TLSTimedOutConnections.By.FirewallName"
  unit         = "Count"
}
