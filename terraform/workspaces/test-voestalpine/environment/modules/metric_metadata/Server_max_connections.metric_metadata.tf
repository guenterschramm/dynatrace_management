resource "dynatrace_metric_metadata" "Server_max_connections" {
  description        = "The maximum connections from server-side to the system."
  display_name       = "Server max connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.serverMaxConns"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
