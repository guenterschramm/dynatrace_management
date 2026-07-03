resource "dynatrace_metric_metadata" "Pva_client_current_connections" {
  description        = "The current hardware accelerated connections from client-side to the system."
  display_name       = "Pva client current connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.hwClientCurConns"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
