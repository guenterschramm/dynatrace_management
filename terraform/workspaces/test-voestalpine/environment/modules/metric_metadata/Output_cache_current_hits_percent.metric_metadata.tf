resource "dynatrace_metric_metadata" "Output_cache_current_hits_percent" {
  description  = "Output Cache current hit ratio. Calculated as (H)/(H+M) where H and M represent Hits and Misses in previous sample interval respectively."
  display_name = "Output cache current hits percent"
  metric_id    = "metric-iis.W3SVC_WebServiceCache.OutputCacheCurrentHitsPercent"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Percent"
}
