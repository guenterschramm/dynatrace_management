resource "dynatrace_generic_relationships" "network_port_RUNS_ON_network_device_1" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-auto-discovery 4.1.5"
  from_type        = "network:port"
  to_type          = "network:device"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.network_device.if)"
      source_type = "Metrics"
    }
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "lldpChassisId"
          destination_transformation = "To lower case"
          source_property            = "hostChassisId"
          source_transformation      = "To lower case"
        }
      }
    }
  }
}
