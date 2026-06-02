resource "dynatrace_metric_metadata" "TotalCacheSize" {
  display_name = "TotalCacheSize"
  metric_id    = "metric-cloud.aws.storagegateway.TotalCacheSize.By.GatewayId.GatewayName"
  unit         = "Bytes"
}
