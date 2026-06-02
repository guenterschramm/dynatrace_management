resource "dynatrace_metric_metadata" "CurrConnections" {
  display_name = "CurrConnections"
  metric_id    = "metric-cloud.aws.elasticache.CurrConnections.By.CacheClusterId"
  unit         = "Count"
}
