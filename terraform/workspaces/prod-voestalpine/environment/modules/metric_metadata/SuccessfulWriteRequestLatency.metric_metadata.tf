resource "dynatrace_metric_metadata" "SuccessfulWriteRequestLatency" {
  display_name = "SuccessfulWriteRequestLatency"
  metric_id    = "metric-cloud.aws.elasticache.SuccessfulWriteRequestLatency.By.CacheClusterId"
  unit         = "Microseconds"
}
