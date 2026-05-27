resource "dynatrace_generic_relationships" "custom_application_CALLS_sap_application_server" {
  enabled          = true
  created_by       = "com.dynatrace.ext.sap 1.7.4"
  from_type        = "custom_application"
  to_type          = "sap:application_server"
  type_of_relation = "CALLS"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "custom_app"
          destination_transformation = "Leave text as-is"
          source_property            = "detectedName"
          source_transformation      = "Leave text as-is"
        }
      }
    }
  }
}
