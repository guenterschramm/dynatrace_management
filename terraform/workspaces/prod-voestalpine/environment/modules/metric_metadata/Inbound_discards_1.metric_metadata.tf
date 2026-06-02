resource "dynatrace_metric_metadata" "Inbound_discards_1" {
  description        = "Number of inbound packets discarded"
  display_name       = "Inbound discards"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.if.in.discards.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_network_interface"
  unit               = "Count"
}
