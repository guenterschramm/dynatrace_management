resource "dynatrace_metric_metadata" "Latency_2" {
  display_name = "Latency"
  metric_id    = "metric-cloud.aws.apigateway.Latency.By.ApiName"
  unit         = "Millisecond"
}
