resource "dynatrace_metric_metadata" "FreeableMemory_5" {
  display_name = "FreeableMemory"
  metric_id    = "metric-cloud.aws.elasticache.FreeableMemory.By.CacheClusterId.CacheNodeId"
  unit         = "Bytes"
}
