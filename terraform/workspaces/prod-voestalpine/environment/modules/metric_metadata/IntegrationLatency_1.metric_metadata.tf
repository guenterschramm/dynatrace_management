resource "dynatrace_metric_metadata" "IntegrationLatency_1" {
  display_name = "IntegrationLatency"
  metric_id    = "metric-cloud.aws.apigateway.IntegrationLatency.By.ApiName"
  unit         = "Millisecond"
}
