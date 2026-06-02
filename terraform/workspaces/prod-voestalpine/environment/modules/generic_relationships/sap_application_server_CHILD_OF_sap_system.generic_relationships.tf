resource "dynatrace_generic_relationships" "sap_application_server_CHILD_OF_sap_system" {
  enabled          = true
  created_by       = "com.dynatrace.ext.sap 1.7.4"
  from_type        = "sap:application_server"
  to_type          = "sap:system"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(sap.)"
      source_type = "Metrics"
    }
  }
}
