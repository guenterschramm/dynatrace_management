resource "dynatrace_metric_metadata" "File_cache_hits" {
  description  = "Total number of successful lookups in the user-mode file cache (since service startup)."
  display_name = "File cache hits"
  metric_id    = "metric-iis.W3SVC_WebServiceCache.FileCacheHits.count"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
