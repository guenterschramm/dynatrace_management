resource "dynatrace_metric_metadata" "NetworkBytesOut_2" {
  display_name = "NetworkBytesOut"
  metric_id    = "metric-cloud.aws.elasticache.NetworkBytesOut.By.CacheClusterId"
  unit         = "Bytes"
}
