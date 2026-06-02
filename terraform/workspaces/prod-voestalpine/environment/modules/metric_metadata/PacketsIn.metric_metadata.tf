resource "dynatrace_metric_metadata" "PacketsIn" {
  display_name = "PacketsIn"
  metric_id    = "metric-cloud.aws.transitgateway.PacketsIn.By.TransitGateway"
  unit         = "Count"
}
