resource "dynatrace_metric_metadata" "PacketsDropCount" {
  display_name = "PacketsDropCount"
  metric_id    = "metric-cloud.aws.natgateway.PacketsDropCount.By.NatGatewayId"
  unit         = "Count"
}
