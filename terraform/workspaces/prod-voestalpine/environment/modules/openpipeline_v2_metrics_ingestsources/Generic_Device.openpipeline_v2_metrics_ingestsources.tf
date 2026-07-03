resource "dynatrace_openpipeline_v2_metrics_ingestsources" "Generic_Device" {
  enabled      = true
  display_name = "Generic Device"
  source       = "com.dynatrace.extension.snmp-generic-device"
  source_type  = "extension"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.snmp-generic-device"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "3.0.4"
    }
  }
  static_routing {
    pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGZjN2RlMzUxLWY1NWItM2I5ZS1iNDc4LTY3MjY1NDU3ZGMzOL7vVN4V2t6t"
    pipeline_type = "custom"
  }
}
