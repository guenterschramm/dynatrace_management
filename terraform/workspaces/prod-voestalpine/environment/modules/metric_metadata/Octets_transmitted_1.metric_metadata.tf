resource "dynatrace_metric_metadata" "Octets_transmitted_1" {
  description        = "The total number of octets transmitted out of the interface including framing characters"
  display_name       = "Octets transmitted"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.if.out.octets.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_network_interface"
  unit               = "Count"
}
