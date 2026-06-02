resource "dynatrace_generic_relationships" "snmptraps_com_dynatrace_ext_snmp-traps_SAME_AS_snmp_com_dynatrace_extension_snmp_generic_device" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-generic-device 2.5.12"
  from_type        = "snmptraps:com_dynatrace_ext_snmp-traps"
  to_type          = "snmp:com_dynatrace_extension_snmp_generic_device"
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
