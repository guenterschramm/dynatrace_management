resource "dynatrace_metric_metadata" "UnusedMemory_1" {
  display_name = "UnusedMemory"
  metric_id    = "metric-cloud.aws.elasticache.UnusedMemory.By.CacheClusterId.CacheNodeId"
  unit         = "Bytes"
}
