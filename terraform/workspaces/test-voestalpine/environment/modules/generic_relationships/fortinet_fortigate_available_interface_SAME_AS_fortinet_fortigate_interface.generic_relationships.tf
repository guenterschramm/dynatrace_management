resource "dynatrace_generic_relationships" "fortinet_fortigate_available_interface_SAME_AS_fortinet_fortigate_interface" {
  enabled          = true
  created_by       = "com.dynatrace.extension.fortigate 2.0.2"
  from_type        = "fortinet:fortigate_available_interface"
  to_type          = "fortinet:fortigate_interface"
  type_of_relation = "SAME_AS"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "url"
          destination_transformation = "Leave text as-is"
          source_property            = "url"
          source_transformation      = "Leave text as-is"
        }
        mapping_rule {
          destination_property       = "alias"
          destination_transformation = "Leave text as-is"
          source_property            = "alias"
          source_transformation      = "Leave text as-is"
        }
        mapping_rule {
          destination_property       = "if_name"
          destination_transformation = "Leave text as-is"
          source_property            = "if_name"
          source_transformation      = "Leave text as-is"
        }
        mapping_rule {
          destination_property       = "mac_address"
          destination_transformation = "Leave text as-is"
          source_property            = "mac_address"
          source_transformation      = "Leave text as-is"
        }
      }
    }
  }
}
