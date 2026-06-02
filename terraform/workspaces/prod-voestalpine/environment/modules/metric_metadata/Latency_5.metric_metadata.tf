resource "dynatrace_metric_metadata" "Latency_5" {
  display_name = "Latency"
  metric_id    = "metric-cloud.aws.apigateway.Latency.By.ApiId.Stage"
  unit         = "Millisecond"
}
