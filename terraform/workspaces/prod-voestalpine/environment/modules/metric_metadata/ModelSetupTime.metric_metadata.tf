resource "dynatrace_metric_metadata" "ModelSetupTime" {
  display_name = "ModelSetupTime"
  metric_id    = "metric-cloud.aws.sagemaker_invocation.ModelSetupTime.By.EndpointName.VariantName"
  unit         = "Microseconds"
}
