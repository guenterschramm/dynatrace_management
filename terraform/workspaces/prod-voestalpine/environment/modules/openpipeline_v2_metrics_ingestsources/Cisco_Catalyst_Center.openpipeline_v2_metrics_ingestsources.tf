resource "dynatrace_openpipeline_v2_metrics_ingestsources" "Cisco_Catalyst_Center" {
  enabled      = true
  display_name = "Cisco Catalyst Center"
  source       = "com.dynatrace.extension.cisco-cc"
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
    pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGEwOWQ3ZTUwLWRlY2ItM2QyYy04ZjA4LTk3YzVhZGNmOGVmML7vVN4V2t6t"
    pipeline_type = "custom"
  }
}
