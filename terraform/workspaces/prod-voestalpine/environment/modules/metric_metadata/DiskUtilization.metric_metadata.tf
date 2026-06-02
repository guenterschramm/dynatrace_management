resource "dynatrace_metric_metadata" "DiskUtilization" {
  display_name = "DiskUtilization"
  metric_id    = "metric-cloud.aws.sagemaker_endpoint.DiskUtilization.By.EndpointName.VariantName"
  unit         = "Percent"
}
