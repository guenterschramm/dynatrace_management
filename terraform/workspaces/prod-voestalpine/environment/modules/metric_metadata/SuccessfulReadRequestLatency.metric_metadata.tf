resource "dynatrace_metric_metadata" "SuccessfulReadRequestLatency" {
  display_name = "SuccessfulReadRequestLatency"
  metric_id    = "metric-cloud.aws.elasticache.SuccessfulReadRequestLatency.By.CacheClusterId"
  unit         = "Microseconds"
}
