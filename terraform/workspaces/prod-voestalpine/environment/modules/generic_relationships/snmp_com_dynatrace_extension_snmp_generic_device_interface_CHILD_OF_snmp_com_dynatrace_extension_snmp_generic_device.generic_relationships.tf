resource "dynatrace_generic_relationships" "snmp_com_dynatrace_extension_snmp_generic_device_interface_CHILD_OF_snmp_com_dynatrace_extension_snmp_generic_device" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-generic-device 3.0.4"
  from_type        = "snmp:com_dynatrace_extension_snmp_generic_device_interface"
  to_type          = "snmp:com_dynatrace_extension_snmp_generic_device"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.snmp-generic-device)"
      source_type = "Metrics"
    }
  }
}
