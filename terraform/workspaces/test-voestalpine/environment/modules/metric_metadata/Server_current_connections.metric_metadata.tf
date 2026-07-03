resource "dynatrace_metric_metadata" "Server_current_connections" {
  description        = "The current connections from server-side to the system."
  display_name       = "Server current connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.serverCurConns"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
