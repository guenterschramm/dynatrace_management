resource "dynatrace_metric_metadata" "Pva_client_max_connections" {
  description        = "The maximum hardware accelerated connections from client-side to the system."
  display_name       = "Pva client max connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.hwClientMaxConns"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
