resource "dynatrace_generic_relationships" "cisco_cc_device_SAME_AS_network_device" {
  enabled          = true
  created_by       = "com.dynatrace.extension.cisco-cc 2.2.1"
  from_type        = "cisco_cc:device"
  to_type          = "network:device"
  type_of_relation = "SAME_AS"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "dt.ip_addresses"
          destination_transformation = "To lower case"
          source_property            = "device_ip_address"
          source_transformation      = "To lower case"
        }
      }
    }
    source {
      condition   = "$prefix(cisco.cc.device.)"
      source_type = "Metrics"
    }
  }
}
