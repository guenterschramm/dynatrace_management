resource "dynatrace_metric_metadata" "UnusedMemory" {
  display_name = "UnusedMemory"
  metric_id    = "metric-cloud.aws.elasticache.UnusedMemory.By.CacheClusterId"
  unit         = "Bytes"
}
