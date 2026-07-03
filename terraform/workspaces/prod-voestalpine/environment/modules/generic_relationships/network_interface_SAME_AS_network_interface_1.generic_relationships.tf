resource "dynatrace_generic_relationships" "network_interface_SAME_AS_network_interface_1" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-auto-discovery 4.1.7"
  from_type        = "network_interface"
  to_type          = "network:interface"
  type_of_relation = "SAME_AS"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "macAddress"
          destination_transformation = "To lower case"
          source_property            = "ifMacAddr"
          source_transformation      = "To lower case"
        }
      }
    }
  }
}
