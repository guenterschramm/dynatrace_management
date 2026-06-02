resource "dynatrace_metric_metadata" "Evictions_1" {
  display_name = "Evictions"
  metric_id    = "metric-cloud.aws.elasticache.Evictions.By.CacheClusterId"
  unit         = "Count"
}
