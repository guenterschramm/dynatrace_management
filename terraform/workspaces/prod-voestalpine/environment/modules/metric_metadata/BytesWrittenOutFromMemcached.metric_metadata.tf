resource "dynatrace_metric_metadata" "BytesWrittenOutFromMemcached" {
  display_name = "BytesWrittenOutFromMemcached"
  metric_id    = "metric-cloud.aws.elasticache.BytesWrittenOutFromMemcached.By.CacheClusterId"
  unit         = "Bytes"
}
