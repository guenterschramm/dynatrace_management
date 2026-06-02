resource "dynatrace_metric_metadata" "CacheHits" {
  display_name = "CacheHits"
  metric_id    = "metric-cloud.aws.elasticache.CacheHits.By.CacheClusterId.CacheNodeId"
  unit         = "Count"
}
