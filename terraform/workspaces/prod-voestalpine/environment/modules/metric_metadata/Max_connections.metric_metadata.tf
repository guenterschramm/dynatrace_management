resource "dynatrace_metric_metadata" "Max_connections" {
  description  = "Maximum number of concurrent connections established for this site"
  display_name = "Max connections"
  metric_id    = "metric-iis.HTTPServiceUrlGroups.MaxConnections"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
