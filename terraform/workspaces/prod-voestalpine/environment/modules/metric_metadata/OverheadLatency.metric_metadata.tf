resource "dynatrace_metric_metadata" "OverheadLatency" {
  display_name = "OverheadLatency"
  metric_id    = "metric-cloud.aws.sagemaker_invocation.OverheadLatency.By.EndpointName.VariantName"
  unit         = "Microseconds"
}
