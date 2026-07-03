resource "dynatrace_metric_metadata" "Server_packets_out" {
  description        = "The number of packets sent to server-side from the system."
  display_name       = "Server packets out"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.serverPacketsOut"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
