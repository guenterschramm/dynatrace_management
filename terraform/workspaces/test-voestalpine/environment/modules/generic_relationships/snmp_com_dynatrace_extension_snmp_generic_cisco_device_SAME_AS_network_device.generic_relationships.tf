resource "dynatrace_generic_relationships" "snmp_com_dynatrace_extension_snmp_generic_cisco_device_SAME_AS_network_device" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-generic-cisco-device 4.0.8"
  from_type        = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  to_type          = "network:device"
  type_of_relation = "SAME_AS"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.snmp-generic-cisco-device)"
      source_type = "Metrics"
    }
  }
}
