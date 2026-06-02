resource "dynatrace_metric_metadata" "ProvisionedConcurrentExecutions" {
  display_name = "ProvisionedConcurrentExecutions"
  metric_id    = "metric-cloud.aws.lambda.ProvisionedConcurrentExecutions.By.FunctionName"
  unit         = "Count"
}
