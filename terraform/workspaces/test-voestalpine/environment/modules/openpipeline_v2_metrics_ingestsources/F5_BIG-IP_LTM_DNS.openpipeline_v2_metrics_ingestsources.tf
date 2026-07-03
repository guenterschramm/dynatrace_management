resource "dynatrace_openpipeline_v2_metrics_ingestsources" "F5_BIG-IP_LTM_DNS" {
  enabled      = true
  display_name = "F5 BIG-IP LTM & DNS"
  source       = "com.dynatrace.extension.f5.bigip"
  source_type  = "extension"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.f5.bigip"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "3.0.6"
    }
  }
  static_routing {
    pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGRiMTNhODZkLTUzMjktMzVlNy04NmU5LWI1YjBmNTNmMTkyYr7vVN4V2t6t"
    pipeline_type = "custom"
  }
}
