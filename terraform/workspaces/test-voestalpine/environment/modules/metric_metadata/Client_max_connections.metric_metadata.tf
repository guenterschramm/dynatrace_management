resource "dynatrace_metric_metadata" "Client_max_connections" {
  description        = "The maximum connections from client-side to the system."
  display_name       = "Client max connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.clientMaxConns"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
