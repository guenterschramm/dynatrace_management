resource "dynatrace_openpipeline_v2_logs_ingestsources" "Cisco_Catalyst_Center" {
  enabled      = true
  display_name = "Cisco Catalyst Center"
  source       = "extension:com.dynatrace.extension.cisco-cc"
  source_type  = "extension"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.cisco-cc"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "3.0.3"
    }
  }
  static_routing {
    pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDBmNTI4MmNjLTU3ZDMtM2Y5Mi04NGU0LWNjZmIxM2UzY2JkOL7vVN4V2t6t"
    pipeline_type = "custom"
  }
}
