resource "dynatrace_openpipeline_v2_metrics_ingestsources" "Tibco_EMS" {
  enabled      = true
  display_name = "Tibco EMS"
  source       = "com.dynatrace.extension.tibcoems"
  source_type  = "extension"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.tibcoems"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "2.0.2"
    }
  }
  static_routing {
    pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGQzMDc4ZDc2LTBkZTAtM2UxMi04ODFhLTk3YWFjZWYwNGY4Zr7vVN4V2t6t"
    pipeline_type = "custom"
  }
}
