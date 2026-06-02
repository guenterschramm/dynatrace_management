resource "dynatrace_metric_metadata" "BytesOutToDestination" {
  display_name = "BytesOutToDestination"
  metric_id    = "metric-cloud.aws.natgateway.BytesOutToDestination.By.NatGatewayId"
  unit         = "Bytes"
}
