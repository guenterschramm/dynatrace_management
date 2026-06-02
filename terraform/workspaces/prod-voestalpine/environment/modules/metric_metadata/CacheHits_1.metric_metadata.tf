resource "dynatrace_metric_metadata" "CacheHits_1" {
  display_name = "CacheHits"
  metric_id    = "metric-cloud.aws.elasticache.CacheHits.By.CacheClusterId"
  unit         = "Count"
}
