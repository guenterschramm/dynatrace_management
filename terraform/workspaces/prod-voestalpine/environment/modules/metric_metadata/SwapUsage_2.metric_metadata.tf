resource "dynatrace_metric_metadata" "SwapUsage_2" {
  display_name = "SwapUsage"
  metric_id    = "metric-cloud.aws.elasticache.SwapUsage.By.CacheClusterId"
  unit         = "Bytes"
}
