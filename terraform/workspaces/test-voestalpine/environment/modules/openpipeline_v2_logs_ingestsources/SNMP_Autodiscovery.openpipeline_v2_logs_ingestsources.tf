resource "dynatrace_openpipeline_v2_logs_ingestsources" "SNMP_Autodiscovery" {
  enabled      = true
  display_name = "SNMP Autodiscovery"
  source       = "extension:com.dynatrace.extension.snmp-auto-discovery"
  source_type  = "extension"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.snmp-auto-discovery"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "4.1.7"
    }
  }
  static_routing {
    pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGYzYWRlODQ2LTdmYjgtMzc0Zi1hY2IxLTM1Mjg3M2Y0NDFmOb7vVN4V2t6t"
    pipeline_type = "custom"
  }
}
