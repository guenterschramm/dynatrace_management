resource "dynatrace_metric_metadata" "IntegrationLatency" {
  display_name = "IntegrationLatency"
  metric_id    = "metric-cloud.aws.apigateway.IntegrationLatency.By.ApiId"
  unit         = "Millisecond"
}
