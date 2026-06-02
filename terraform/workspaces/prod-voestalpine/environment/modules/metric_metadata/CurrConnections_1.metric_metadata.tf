resource "dynatrace_metric_metadata" "CurrConnections_1" {
  display_name = "CurrConnections"
  metric_id    = "metric-cloud.aws.elasticache.CurrConnections.By.CacheClusterId.CacheNodeId"
  unit         = "Count"
}
