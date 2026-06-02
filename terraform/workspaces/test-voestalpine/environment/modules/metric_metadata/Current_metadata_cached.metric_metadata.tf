resource "dynatrace_metric_metadata" "Current_metadata_cached" {
  description  = "Number of metadata information blocks currently present in user-mode cache."
  display_name = "Current metadata cached"
  metric_id    = "metric-iis.W3SVCW3WP.CurrentMetadataCached"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
