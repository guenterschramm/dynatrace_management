resource "dynatrace_metric_metadata" "Duration" {
  display_name = "Duration"
  metric_id    = "metric-cloud.aws.lambda.Duration.By.FunctionName"
  unit         = "Milliseconds"
}
