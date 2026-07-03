resource "dynatrace_generic_relationships" "f5_virtualserver_SAME_AS_f5_gtm_virtualserver" {
  enabled          = true
  created_by       = "com.dynatrace.extension.f5.bigip 3.0.6"
  from_type        = "f5:virtualserver"
  to_type          = "f5:gtm:virtualserver"
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
