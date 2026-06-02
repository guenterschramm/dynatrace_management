resource "dynatrace_metric_metadata" "Octets_received_1" {
  description        = "The total number of octets received on the interface including framing characters"
  display_name       = "Octets received"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.if.in.octets.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_network_interface"
  unit               = "Count"
}
