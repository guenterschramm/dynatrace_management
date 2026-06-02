resource "dynatrace_metric_metadata" "CacheMisses_1" {
  display_name = "CacheMisses"
  metric_id    = "metric-cloud.aws.elasticache.CacheMisses.By.CacheClusterId"
  unit         = "Count"
}
