resource "dynatrace_metric_metadata" "CacheMissCount" {
  display_name = "CacheMissCount"
  metric_id    = "metric-cloud.aws.apigateway.CacheMissCount.By.ApiName"
  unit         = "Count"
}
