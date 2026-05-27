resource "dynatrace_generic_relationships" "sap_application_server_SAME_AS_host" {
  enabled          = true
  created_by       = "com.dynatrace.ext.sap 1.7.4"
  from_type        = "sap:application_server"
  to_type          = "host"
  type_of_relation = "SAME_AS"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "dt.ip_addresses"
          destination_transformation = "Leave text as-is"
          source_property            = "dt.ip_addresses"
          source_transformation      = "Leave text as-is"
        }
      }
    }
  }
}
