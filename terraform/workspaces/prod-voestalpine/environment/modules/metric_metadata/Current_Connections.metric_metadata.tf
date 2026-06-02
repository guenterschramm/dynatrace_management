resource "dynatrace_metric_metadata" "Current_Connections" {
  description  = "Current Connections is the current number of connections established with the Web service."
  display_name = "Current Connections"
  metric_id    = "metric-iis.current.connections.gauge"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Count"
}
