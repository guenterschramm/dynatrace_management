resource "dynatrace_metric_metadata" "CachePercentDirty" {
  display_name = "CachePercentDirty"
  metric_id    = "metric-cloud.aws.storagegateway.CachePercentDirty.By.GatewayId.GatewayName"
  unit         = "Percent"
}
