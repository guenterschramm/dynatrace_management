resource "dynatrace_metric_metadata" "GPUUtilization" {
  display_name = "GPUUtilization"
  metric_id    = "metric-cloud.aws.sagemaker_endpoint.GPUUtilization.By.EndpointName.VariantName"
  unit         = "Percent"
}
