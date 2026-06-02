resource "dynatrace_metric_metadata" "DatabaseMemoryUsagePercentage_1" {
  display_name = "DatabaseMemoryUsagePercentage"
  metric_id    = "metric-cloud.aws.elasticache.DatabaseMemoryUsagePercentage.By.CacheClusterId.CacheNodeId"
  unit         = "Percent"
}
