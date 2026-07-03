resource "dynatrace_generic_relationships" "network_interface_CHILD_OF_network_port_2" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-auto-discovery 4.1.7"
  from_type        = "network_interface"
  to_type          = "network:port"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "macAddress"
          destination_transformation = "To lower case"
          source_property            = "macAddress"
          source_transformation      = "To lower case"
        }
      }
    }
  }
}
