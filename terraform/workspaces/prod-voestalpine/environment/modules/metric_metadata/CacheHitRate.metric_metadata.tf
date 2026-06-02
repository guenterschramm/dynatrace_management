resource "dynatrace_metric_metadata" "CacheHitRate" {
  display_name = "CacheHitRate"
  metric_id    = "metric-cloud.aws.elasticache.CacheHitRate.By.CacheClusterId"
  unit         = "Percent"
}
