resource "dynatrace_metric_metadata" "ConcurrentRequestsPerModel" {
  display_name = "ConcurrentRequestsPerModel"
  metric_id    = "metric-cloud.aws.sagemaker_invocation.ConcurrentRequestsPerModel.By.EndpointName.VariantName"
  unit         = "Count"
}
