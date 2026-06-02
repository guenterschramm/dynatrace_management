resource "dynatrace_metric_metadata" "CacheMisses" {
  display_name = "CacheMisses"
  metric_id    = "metric-cloud.aws.elasticache.CacheMisses.By.CacheClusterId.CacheNodeId"
  unit         = "Count"
}
