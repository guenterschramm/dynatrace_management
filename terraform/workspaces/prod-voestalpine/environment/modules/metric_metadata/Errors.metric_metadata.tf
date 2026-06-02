resource "dynatrace_metric_metadata" "Errors" {
  display_name = "Errors"
  metric_id    = "metric-cloud.aws.lambda.Errors.By.FunctionName"
  unit         = "Count"
}
