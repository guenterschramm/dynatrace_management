resource "dynatrace_metric_metadata" "Cache_usage" {
  description  = "Current cache usage calculated based on current bytes used and maximum limit"
  display_name = "Cache usage"
  metric_id    = "metric-func:memcached.cache_usage"
  unit         = "Percent"
}
