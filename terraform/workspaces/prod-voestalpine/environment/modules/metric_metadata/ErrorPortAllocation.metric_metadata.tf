resource "dynatrace_metric_metadata" "ErrorPortAllocation" {
  display_name = "ErrorPortAllocation"
  metric_id    = "metric-cloud.aws.natgateway.ErrorPortAllocation.By.NatGatewayId"
  unit         = "Count"
}
