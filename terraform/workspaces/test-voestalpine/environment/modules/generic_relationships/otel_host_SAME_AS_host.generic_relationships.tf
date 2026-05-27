resource "dynatrace_generic_relationships" "otel_host_SAME_AS_host" {
  enabled          = true
  created_by       = "com.dynatrace.extension.opentelemetry 2.1.3"
  from_type        = "otel:host"
  to_type          = "host"
  type_of_relation = "SAME_AS"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "dt.ip_addresses"
          destination_transformation = "To lower case"
          source_property            = "dt.ip_addresses"
          source_transformation      = "To lower case"
        }
      }
    }
  }
}
