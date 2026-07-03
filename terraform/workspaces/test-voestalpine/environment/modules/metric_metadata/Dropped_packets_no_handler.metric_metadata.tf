resource "dynatrace_metric_metadata" "Dropped_packets_no_handler" {
  description        = "The incoming packets that could not be processed by aa virtual server NAT or SNAT."
  display_name       = "Dropped packets (no handler)"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.noHandlerDeny"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
