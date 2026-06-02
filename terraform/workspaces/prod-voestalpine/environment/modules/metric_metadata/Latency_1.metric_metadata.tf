resource "dynatrace_metric_metadata" "Latency_1" {
  display_name = "Latency"
  metric_id    = "metric-cloud.aws.apigateway.Latency.By.ApiId"
  unit         = "Millisecond"
}
