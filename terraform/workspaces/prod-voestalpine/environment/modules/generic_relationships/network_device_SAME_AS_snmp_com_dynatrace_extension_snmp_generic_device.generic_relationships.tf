resource "dynatrace_generic_relationships" "network_device_SAME_AS_snmp_com_dynatrace_extension_snmp_generic_device" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-generic-device 2.5.12"
  from_type        = "network:device"
  to_type          = "snmp:com_dynatrace_extension_snmp_generic_device"
  type_of_relation = "SAME_AS"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.snmp-generic-device)"
      source_type = "Metrics"
    }
  }
}
