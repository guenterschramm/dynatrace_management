resource "dynatrace_generic_relationships" "snmp_com_dynatrace_extension_snmp_generic_juniper_disk_PART_OF_snmp_com_dynatrace_extension_snmp_generic_juniper_device" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-generic-juniper 3.0.4"
  from_type        = "snmp:com_dynatrace_extension_snmp_generic_juniper_disk"
  to_type          = "snmp:com_dynatrace_extension_snmp_generic_juniper_device"
  type_of_relation = "PART_OF"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.juniper.generic.device.storage)"
      source_type = "Metrics"
    }
  }
}
