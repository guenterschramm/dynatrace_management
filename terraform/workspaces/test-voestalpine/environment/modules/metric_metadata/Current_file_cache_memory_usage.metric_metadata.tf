resource "dynatrace_metric_metadata" "Current_file_cache_memory_usage" {
  description  = "Current number of bytes used by user-mode file cache."
  display_name = "Current file cache memory usage"
  metric_id    = "metric-iis.W3SVCW3WP.CurrentFileCacheMemoryUsage"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Byte"
}
