resource "dynatrace_metric_metadata" "APM_current_connections" {
  description        = "The total current SSL/VPN connections in the system"
  display_name       = "APM current connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.apm.current_conns"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
