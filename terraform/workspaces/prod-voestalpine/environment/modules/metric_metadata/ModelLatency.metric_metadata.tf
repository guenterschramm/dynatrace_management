resource "dynatrace_metric_metadata" "ModelLatency" {
  display_name = "ModelLatency"
  metric_id    = "metric-cloud.aws.sagemaker_invocation.ModelLatency.By.EndpointName.VariantName"
  unit         = "Microseconds"
}
