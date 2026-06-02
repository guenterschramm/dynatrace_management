resource "dynatrace_metric_metadata" "Cache_Hit_Rate" {
  description  = "Rate of cache hits for the queue"
  display_name = "Cache Hit Rate"
  metric_id    = "metric-iis.cache.hitRate"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Percent"
}
