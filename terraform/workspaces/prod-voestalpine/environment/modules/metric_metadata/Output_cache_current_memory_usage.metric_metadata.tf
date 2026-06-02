resource "dynatrace_metric_metadata" "Output_cache_current_memory_usage" {
  description  = "Current number of bytes used by output cache."
  display_name = "Output cache current memory usage"
  metric_id    = "metric-iis.W3SVCW3WP.OutputCacheCurrentMemoryUsage"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Byte"
}
