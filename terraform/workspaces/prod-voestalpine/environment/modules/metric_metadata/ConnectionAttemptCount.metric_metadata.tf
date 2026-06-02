resource "dynatrace_metric_metadata" "ConnectionAttemptCount" {
  display_name = "ConnectionAttemptCount"
  metric_id    = "metric-cloud.aws.natgateway.ConnectionAttemptCount.By.NatGatewayId"
  unit         = "Count"
}
