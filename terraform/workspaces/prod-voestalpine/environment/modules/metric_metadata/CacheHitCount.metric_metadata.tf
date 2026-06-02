resource "dynatrace_metric_metadata" "CacheHitCount" {
  display_name = "CacheHitCount"
  metric_id    = "metric-cloud.aws.apigateway.CacheHitCount.By.ApiName"
  unit         = "Count"
}
