resource "dynatrace_openpipeline_v2_metrics_ingestsources" "SSL_Certificate_Monitor_Source" {
  enabled      = true
  display_name = "SSL Certificate Monitor Source"
  source       = "com.dynatrace.custom.python-certificate-monitor"
  source_type  = "extension"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.custom.python-certificate-monitor"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "2.0.0"
    }
  }
  static_routing {
    pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDI0NjZjMTcwLTVhMzktMzZiNC04MzJmLWVjZjk2ZjIxYzY0NL7vVN4V2t6t"
    pipeline_type = "custom"
  }
}
