resource "dynatrace_openpipeline_v2_metrics_ingestsources" "Generic_Juniper_Device" {
  enabled      = true
  display_name = "Generic Juniper Device"
  source       = "com.dynatrace.extension.snmp-generic-juniper"
  source_type  = "extension"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.snmp-generic-juniper"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "3.0.4"
    }
  }
  static_routing {
    pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGNlOWE3MWRhLTc5MmUtMzIyZC04YmRiLTQzODU2ZGUyYjBmY77vVN4V2t6t"
    pipeline_type = "custom"
  }
}
