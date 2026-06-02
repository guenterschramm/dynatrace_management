resource "dynatrace_metric_metadata" "IdleTimeoutCount" {
  display_name = "IdleTimeoutCount"
  metric_id    = "metric-cloud.aws.natgateway.IdleTimeoutCount.By.NatGatewayId"
  unit         = "Count"
}
