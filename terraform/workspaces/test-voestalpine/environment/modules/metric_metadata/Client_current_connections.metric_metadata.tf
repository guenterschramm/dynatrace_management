resource "dynatrace_metric_metadata" "Client_current_connections" {
  description        = "The current connections from client-side to the system."
  display_name       = "Client current connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.clientCurConns"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
