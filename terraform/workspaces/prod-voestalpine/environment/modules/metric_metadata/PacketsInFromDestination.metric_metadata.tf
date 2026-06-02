resource "dynatrace_metric_metadata" "PacketsInFromDestination" {
  display_name = "PacketsInFromDestination"
  metric_id    = "metric-cloud.aws.natgateway.PacketsInFromDestination.By.NatGatewayId"
  unit         = "Count"
}
