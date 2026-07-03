resource "dynatrace_openpipeline_v2_metrics_ingestsources" "IIS_Extension_Source" {
  enabled      = true
  display_name = "IIS Extension Source"
  source       = "com.dynatrace.extension.wmi.iis"
  source_type  = "extension"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.wmi.iis"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "2.0.1"
    }
  }
  static_routing {
    pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDEzMzA0NThmLWM2ZDktMzdhZC04NWM5LWVjMjQyNmI5YjMwNr7vVN4V2t6t"
    pipeline_type = "custom"
  }
}
