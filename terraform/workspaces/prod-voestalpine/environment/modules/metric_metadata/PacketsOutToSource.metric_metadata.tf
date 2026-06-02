resource "dynatrace_metric_metadata" "PacketsOutToSource" {
  display_name = "PacketsOutToSource"
  metric_id    = "metric-cloud.aws.natgateway.PacketsOutToSource.By.NatGatewayId"
  unit         = "Count"
}
