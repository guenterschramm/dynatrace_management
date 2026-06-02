resource "dynatrace_metric_metadata" "FreeableMemory_1" {
  display_name = "FreeableMemory"
  metric_id    = "metric-cloud.aws.elasticache.FreeableMemory.By.CacheClusterId"
  unit         = "Bytes"
}
