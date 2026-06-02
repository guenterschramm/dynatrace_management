resource "dynatrace_metric_metadata" "CacheHitRate_1" {
  display_name = "CacheHitRate"
  metric_id    = "metric-cloud.aws.elasticache.CacheHitRate.By.CacheClusterId.CacheNodeId"
  unit         = "Percent"
}
