resource "dynatrace_openpipeline_v2_metrics_ingestsources" "Fortigate" {
  enabled      = true
  display_name = "Fortigate"
  source       = "com.dynatrace.extension.fortigate"
  source_type  = "extension"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.fortigate"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "2.0.2"
    }
  }
  static_routing {
    pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDZhYTJjYmMxLWZiOTYtM2YzZC05MTAwLWEwNzY2ZjNiYTc0Yb7vVN4V2t6t"
    pipeline_type = "custom"
  }
}
