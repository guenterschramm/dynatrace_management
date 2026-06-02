resource "dynatrace_metric_metadata" "TLSDroppedPackets" {
  display_name = "TLSDroppedPackets"
  metric_id    = "metric-cloud.aws.networkfirewall.TLSDroppedPackets.By.FirewallName"
  unit         = "Count"
}
