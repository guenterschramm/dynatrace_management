resource "dynatrace_metric_metadata" "ConcurrentExecutions" {
  display_name = "ConcurrentExecutions"
  metric_id    = "metric-cloud.aws.lambda.ConcurrentExecutions.By.FunctionName"
  unit         = "Count"
}
