resource "dynatrace_generic_relationships" "snmp_com_dynatrace_extension_snmp_generic_juniper_network_interface_CHILD_OF_snmp_com_dynatrace_extension_snmp_generic_juniper_device" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-generic-juniper 3.0.4"
  from_type        = "snmp:com_dynatrace_extension_snmp_generic_juniper_network_interface"
  to_type          = "snmp:com_dynatrace_extension_snmp_generic_juniper_device"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.juniper)"
      source_type = "Metrics"
    }
  }
}
