resource "dynatrace_metric_metadata" "Throttles" {
  display_name = "Throttles"
  metric_id    = "metric-cloud.aws.lambda.Throttles.By.FunctionName"
  unit         = "Count"
}
