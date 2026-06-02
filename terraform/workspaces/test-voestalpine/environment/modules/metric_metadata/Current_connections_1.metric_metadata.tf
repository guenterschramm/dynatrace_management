resource "dynatrace_metric_metadata" "Current_connections_1" {
  description  = "Number of current connections established for this site"
  display_name = "Current connections"
  metric_id    = "metric-iis.HTTPServiceUrlGroups.CurrentConnections"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
