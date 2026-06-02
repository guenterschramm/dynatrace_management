resource "dynatrace_metric_metadata" "GPUMemoryUtilization" {
  display_name = "GPUMemoryUtilization"
  metric_id    = "metric-cloud.aws.sagemaker_endpoint.GPUMemoryUtilization.By.EndpointName.VariantName"
  unit         = "Percent"
}
