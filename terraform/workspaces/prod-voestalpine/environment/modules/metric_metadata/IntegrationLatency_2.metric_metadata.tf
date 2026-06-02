resource "dynatrace_metric_metadata" "IntegrationLatency_2" {
  display_name = "IntegrationLatency"
  metric_id    = "metric-cloud.aws.apigateway.IntegrationLatency.By.ApiId.Stage"
  unit         = "Millisecond"
}
