resource "dynatrace_metric_metadata" "Client_packets_out" {
  description        = "The number of packets sent to client-side from the system."
  display_name       = "Client packets out"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.clientPacketsOut"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
