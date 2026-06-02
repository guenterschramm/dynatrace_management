resource "dynatrace_metric_metadata" "Count" {
  display_name = "Count"
  metric_id    = "metric-cloud.aws.apigateway.Count.By.ApiId"
  unit         = "Count"
}
