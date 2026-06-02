resource "dynatrace_metric_metadata" "Metadata_cache_misses_per_second" {
  description  = "Rate of unsuccessful lookups in metadata cache during last sample interval."
  display_name = "Metadata cache misses per second"
  metric_id    = "metric-iis.W3SVCW3WP.MetadataCacheMissesPersec"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "PerSecond"
}
