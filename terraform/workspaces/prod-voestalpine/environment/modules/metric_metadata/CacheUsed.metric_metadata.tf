resource "dynatrace_metric_metadata" "CacheUsed" {
  display_name = "CacheUsed"
  metric_id    = "metric-cloud.aws.storagegateway.CacheUsed.By.GatewayId.GatewayName"
  unit         = "Bytes"
}
