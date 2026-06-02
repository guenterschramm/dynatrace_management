resource "dynatrace_metric_metadata" "Latency" {
  display_name = "Latency"
  metric_id    = "metric-cloud.aws.apigateway.Latency.By.ApiName.Stage"
  unit         = "Millisecond"
}
