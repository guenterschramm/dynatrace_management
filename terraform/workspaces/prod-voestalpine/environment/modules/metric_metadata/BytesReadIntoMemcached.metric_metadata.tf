resource "dynatrace_metric_metadata" "BytesReadIntoMemcached" {
  display_name = "BytesReadIntoMemcached"
  metric_id    = "metric-cloud.aws.elasticache.BytesReadIntoMemcached.By.CacheClusterId"
  unit         = "Bytes"
}
