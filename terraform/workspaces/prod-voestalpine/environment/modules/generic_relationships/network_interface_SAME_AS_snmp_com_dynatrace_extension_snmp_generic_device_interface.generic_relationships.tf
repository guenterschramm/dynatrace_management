resource "dynatrace_generic_relationships" "network_interface_SAME_AS_snmp_com_dynatrace_extension_snmp_generic_device_interface" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-generic-device 2.5.12"
  from_type        = "network:interface"
  to_type          = "snmp:com_dynatrace_extension_snmp_generic_device_interface"
  type_of_relation = "SAME_AS"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.snmp-generic-device.if)"
      source_type = "Metrics"
    }
  }
}
