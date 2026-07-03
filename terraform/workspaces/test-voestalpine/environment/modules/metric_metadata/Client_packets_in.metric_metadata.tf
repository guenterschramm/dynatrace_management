resource "dynatrace_metric_metadata" "Client_packets_in" {
  description        = "The number of packets received by the system from client-side."
  display_name       = "Client packets in"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.clientPacketsIn"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
