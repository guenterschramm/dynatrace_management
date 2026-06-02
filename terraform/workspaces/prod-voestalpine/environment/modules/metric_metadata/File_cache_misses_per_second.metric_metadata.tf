resource "dynatrace_metric_metadata" "File_cache_misses_per_second" {
  description  = "Rate of unsuccessful lookups in file cache during last sample interval."
  display_name = "File cache misses per second"
  metric_id    = "metric-iis.W3SVCW3WP.FileCacheMissesPersec"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "PerSecond"
}
