resource "dynatrace_metric_metadata" "CacheHitPercent" {
  display_name = "CacheHitPercent"
  metric_id    = "metric-cloud.aws.storagegateway.CacheHitPercent.By.GatewayId.GatewayName"
  unit         = "Percent"
}
