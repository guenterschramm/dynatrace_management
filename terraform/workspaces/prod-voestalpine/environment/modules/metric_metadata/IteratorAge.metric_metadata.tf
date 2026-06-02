resource "dynatrace_metric_metadata" "IteratorAge" {
  display_name = "IteratorAge"
  metric_id    = "metric-cloud.aws.lambda.IteratorAge.By.FunctionName"
  unit         = "Milliseconds"
}
