resource "dynatrace_metric_metadata" "Current_files_cached" {
  description  = "Current number of files whose contents are present in user-mode cache."
  display_name = "Current files cached"
  metric_id    = "metric-iis.W3SVCW3WP.CurrentFilesCached"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
