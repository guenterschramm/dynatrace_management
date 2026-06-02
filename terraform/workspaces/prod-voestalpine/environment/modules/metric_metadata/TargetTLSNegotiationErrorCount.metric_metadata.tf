resource "dynatrace_metric_metadata" "TargetTLSNegotiationErrorCount" {
  display_name = "TargetTLSNegotiationErrorCount"
  metric_id    = "metric-cloud.aws.networkelb.TargetTLSNegotiationErrorCount.By.LoadBalancer"
  unit         = "Count"
}
