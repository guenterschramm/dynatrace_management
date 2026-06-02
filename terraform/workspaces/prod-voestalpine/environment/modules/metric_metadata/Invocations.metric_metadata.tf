resource "dynatrace_metric_metadata" "Invocations" {
  display_name = "Invocations"
  metric_id    = "metric-cloud.aws.lambda.Invocations.By.FunctionName"
  unit         = "Count"
}
