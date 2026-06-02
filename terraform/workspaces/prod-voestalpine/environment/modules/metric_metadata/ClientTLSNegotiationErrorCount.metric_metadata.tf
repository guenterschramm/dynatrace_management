resource "dynatrace_metric_metadata" "ClientTLSNegotiationErrorCount" {
  display_name = "ClientTLSNegotiationErrorCount"
  metric_id    = "metric-cloud.aws.networkelb.ClientTLSNegotiationErrorCount.By.LoadBalancer"
  unit         = "Count"
}
