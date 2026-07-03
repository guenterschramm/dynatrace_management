resource "dynatrace_generic_relationships" "snmp_com_dynatrace_extension_snmp_generic_device_SAME_AS_snmptraps_com_dynatrace_ext_snmp-traps" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-generic-device 3.0.5"
  from_type        = "snmp:com_dynatrace_extension_snmp_generic_device"
  to_type          = "snmptraps:com_dynatrace_ext_snmp-traps"
  type_of_relation = "SAME_AS"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "dt.ip_addresses"
          destination_transformation = "Leave text as-is"
          source_property            = "dt.ip_addresses"
          source_transformation      = "Leave text as-is"
        }
      }
    }
  }
}
