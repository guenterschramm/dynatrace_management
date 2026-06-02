resource "dynatrace_metric_metadata" "DeadLetterErrors" {
  display_name = "DeadLetterErrors"
  metric_id    = "metric-cloud.aws.lambda.DeadLetterErrors.By.FunctionName"
  unit         = "Count"
}
