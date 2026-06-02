resource "dynatrace_metric_metadata" "Evictions" {
  display_name = "Evictions"
  metric_id    = "metric-cloud.aws.elasticache.Evictions.By.CacheClusterId.CacheNodeId"
  unit         = "Count"
}
