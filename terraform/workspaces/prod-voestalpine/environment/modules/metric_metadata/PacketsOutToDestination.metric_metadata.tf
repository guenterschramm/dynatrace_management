resource "dynatrace_metric_metadata" "PacketsOutToDestination" {
  display_name = "PacketsOutToDestination"
  metric_id    = "metric-cloud.aws.natgateway.PacketsOutToDestination.By.NatGatewayId"
  unit         = "Count"
}
