resource "dynatrace_metric_metadata" "Server_packets_in" {
  description        = "The number of packets received by the system from server-side."
  display_name       = "Server packets in"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.serverPacketsIn"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
