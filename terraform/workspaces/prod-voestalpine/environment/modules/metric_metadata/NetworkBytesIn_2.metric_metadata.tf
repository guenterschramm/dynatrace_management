resource "dynatrace_metric_metadata" "NetworkBytesIn_2" {
  display_name = "NetworkBytesIn"
  metric_id    = "metric-cloud.aws.elasticache.NetworkBytesIn.By.CacheClusterId"
  unit         = "Bytes"
}
