resource "dynatrace_generic_relationships" "network_device_SAME_AS_snmp_com_dynatrace_extension_snmp_generic_juniper_device" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-generic-juniper 3.0.4"
  from_type        = "network:device"
  to_type          = "snmp:com_dynatrace_extension_snmp_generic_juniper_device"
  type_of_relation = "SAME_AS"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.juniper.generic)"
      source_type = "Metrics"
    }
  }
}
