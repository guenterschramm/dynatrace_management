resource "dynatrace_metric_metadata" "BytesInFromDestination" {
  display_name = "BytesInFromDestination"
  metric_id    = "metric-cloud.aws.natgateway.BytesInFromDestination.By.NatGatewayId"
  unit         = "Bytes"
}
