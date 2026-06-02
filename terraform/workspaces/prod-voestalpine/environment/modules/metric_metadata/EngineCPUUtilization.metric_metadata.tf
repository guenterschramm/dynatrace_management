resource "dynatrace_metric_metadata" "EngineCPUUtilization" {
  display_name = "EngineCPUUtilization"
  metric_id    = "metric-cloud.aws.elasticache.EngineCPUUtilization.By.CacheClusterId"
  unit         = "Percent"
}
