resource "dynatrace_metric_metadata" "ConnectionEstablishedCount" {
  display_name = "ConnectionEstablishedCount"
  metric_id    = "metric-cloud.aws.natgateway.ConnectionEstablishedCount.By.NatGatewayId"
  unit         = "Count"
}
