resource "dynatrace_metric_metadata" "IntegrationLatency_3" {
  display_name = "IntegrationLatency"
  metric_id    = "metric-cloud.aws.apigateway.IntegrationLatency.By.ApiName.Stage"
  unit         = "Millisecond"
}
