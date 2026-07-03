resource "dynatrace_generic_relationships" "cisco_cc_device_CALLS_cisco_cc_site" {
  enabled          = true
  created_by       = "com.dynatrace.extension.cisco-cc 3.0.3"
  from_type        = "cisco_cc:device"
  to_type          = "cisco_cc:site"
  type_of_relation = "CALLS"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "site_name_hierarchy"
          destination_transformation = "To lower case"
          source_property            = "site_name_hierarchy"
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
