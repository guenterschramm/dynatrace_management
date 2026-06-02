resource "dynatrace_metric_metadata" "PacketsOut" {
  display_name = "PacketsOut"
  metric_id    = "metric-cloud.aws.transitgateway.PacketsOut.By.TransitGateway"
  unit         = "Count"
}
