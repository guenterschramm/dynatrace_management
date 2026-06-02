resource "dynatrace_metric_metadata" "TLSErrors" {
  display_name = "TLSErrors"
  metric_id    = "metric-cloud.aws.networkfirewall.TLSErrors.By.FirewallName"
  unit         = "Count"
}
