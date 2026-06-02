resource "dynatrace_metric_metadata" "DatabaseMemoryUsagePercentage" {
  display_name = "DatabaseMemoryUsagePercentage"
  metric_id    = "metric-cloud.aws.elasticache.DatabaseMemoryUsagePercentage.By.CacheClusterId"
  unit         = "Percent"
}
