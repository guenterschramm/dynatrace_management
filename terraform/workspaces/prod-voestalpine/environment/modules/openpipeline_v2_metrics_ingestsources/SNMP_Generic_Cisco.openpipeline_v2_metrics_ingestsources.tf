resource "dynatrace_openpipeline_v2_metrics_ingestsources" "SNMP_Generic_Cisco" {
  enabled      = true
  display_name = "SNMP Generic Cisco"
  source       = "com.dynatrace.extension.snmp-generic-cisco-device"
  source_type  = "extension"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.snmp-generic-cisco-device"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "4.0.9"
    }
  }
  static_routing {
    pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDI2MTgwNzdjLWMzNDEtMzI1Zi05NjAwLTVjYzU2ZWVhOGEwYb7vVN4V2t6t"
    pipeline_type = "custom"
  }
}
