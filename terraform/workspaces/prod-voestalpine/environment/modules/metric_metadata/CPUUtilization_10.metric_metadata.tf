resource "dynatrace_metric_metadata" "CPUUtilization_10" {
  display_name = "CPUUtilization"
  metric_id    = "metric-cloud.aws.elasticache.CPUUtilization.By.CacheClusterId"
  unit         = "Percent"
}
