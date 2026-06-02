resource "dynatrace_metric_metadata" "Octets_received_high_capacity_1" {
  description        = "The total number of octets received on the interface including framing characters. This metric uses 64 bit counter and should be used for highspeed devices."
  display_name       = "Octets received (high capacity)"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.if.hc.in.octets.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_network_interface"
  unit               = "Count"
}
