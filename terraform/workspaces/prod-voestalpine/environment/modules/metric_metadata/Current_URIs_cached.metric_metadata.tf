resource "dynatrace_metric_metadata" "Current_URIs_cached" {
  description  = "URI information blocks currently in the user-mode cache."
  display_name = "Current URIs cached"
  metric_id    = "metric-iis.W3SVCW3WP.CurrentURIsCached"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
