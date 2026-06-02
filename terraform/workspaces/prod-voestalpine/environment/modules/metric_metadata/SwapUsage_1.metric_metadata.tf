resource "dynatrace_metric_metadata" "SwapUsage_1" {
  display_name = "SwapUsage"
  metric_id    = "metric-cloud.aws.elasticache.SwapUsage.By.CacheClusterId.CacheNodeId"
  unit         = "Bytes"
}
