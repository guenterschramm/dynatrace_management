resource "dynatrace_generic_relationships" "network_device_SAME_AS_cisco_cc_device" {
  enabled          = true
  created_by       = "com.dynatrace.extension.cisco-cc 3.0.3"
  from_type        = "network:device"
  to_type          = "cisco_cc:device"
  type_of_relation = "SAME_AS"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "device_ip_address"
          destination_transformation = "To lower case"
          source_property            = "dt.ip_addresses"
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
