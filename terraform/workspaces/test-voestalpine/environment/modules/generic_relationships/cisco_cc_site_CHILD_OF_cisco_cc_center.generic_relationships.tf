resource "dynatrace_generic_relationships" "cisco_cc_site_CHILD_OF_cisco_cc_center" {
  enabled          = true
  created_by       = "com.dynatrace.extension.cisco-cc 2.2.1"
  from_type        = "cisco_cc:site"
  to_type          = "cisco_cc:center"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "center"
          destination_transformation = "To lower case"
          source_property            = "center"
          source_transformation      = "To lower case"
        }
      }
    }
  }
}
