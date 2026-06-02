resource "dynatrace_metric_metadata" "InvocationModelErrors" {
  display_name = "InvocationModelErrors"
  metric_id    = "metric-cloud.aws.sagemaker_invocation.InvocationModelErrors.By.EndpointName.VariantName"
  unit         = "Count"
}
