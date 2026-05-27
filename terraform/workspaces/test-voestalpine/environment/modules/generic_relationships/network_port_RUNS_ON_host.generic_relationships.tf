resource "dynatrace_generic_relationships" "network_port_RUNS_ON_host" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-auto-discovery 4.1.5"
  from_type        = "network:port"
  to_type          = "host"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "macAddresses"
          destination_transformation = "To lower case"
          source_property            = "macAddress"
          source_transformation      = "To lower case"
        }
      }
    }
  }
}
