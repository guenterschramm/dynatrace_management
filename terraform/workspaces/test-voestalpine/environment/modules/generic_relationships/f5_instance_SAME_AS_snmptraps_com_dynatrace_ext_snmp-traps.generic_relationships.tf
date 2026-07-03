resource "dynatrace_generic_relationships" "f5_instance_SAME_AS_snmptraps_com_dynatrace_ext_snmp-traps" {
  enabled          = true
  created_by       = "com.dynatrace.extension.f5.bigip 3.0.6"
  from_type        = "f5:instance"
  to_type          = "snmptraps:com_dynatrace_ext_snmp-traps"
  type_of_relation = "SAME_AS"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "dt.ip_addresses"
          destination_transformation = "To lower case"
          source_property            = "dt.ip_addresses"
          source_transformation      = "To lower case"
        }
      }
    }
  }
}
