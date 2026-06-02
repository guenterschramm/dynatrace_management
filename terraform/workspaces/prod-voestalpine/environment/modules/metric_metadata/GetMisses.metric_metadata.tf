resource "dynatrace_metric_metadata" "GetMisses" {
  display_name = "GetMisses"
  metric_id    = "metric-cloud.aws.elasticache.GetMisses.By.CacheClusterId.CacheNodeId"
  unit         = "Count"
}
