resource "dynatrace_metric_metadata" "Output_cache_misses_per_second" {
  description  = "Rate of unsuccessful lookups in output cache during last sample interval."
  display_name = "Output cache misses per second"
  metric_id    = "metric-iis.W3SVCW3WP.OutputCacheMissesPersec"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "PerSecond"
}
