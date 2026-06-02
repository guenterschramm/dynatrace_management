resource "dynatrace_metric_metadata" "Octets_transmitted_high_capacity" {
  description        = "The total number of octets transmitted out of the interface including framing characters. This metric uses 64 bit counter and should be used for highspeed devices."
  display_name       = "Octets transmitted (high capacity)"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.if.hc.out.octets.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device_interface"
  unit               = "Count"
}
