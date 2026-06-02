resource "dynatrace_metric_metadata" "PacketsInFromSource" {
  display_name = "PacketsInFromSource"
  metric_id    = "metric-cloud.aws.natgateway.PacketsInFromSource.By.NatGatewayId"
  unit         = "Count"
}
