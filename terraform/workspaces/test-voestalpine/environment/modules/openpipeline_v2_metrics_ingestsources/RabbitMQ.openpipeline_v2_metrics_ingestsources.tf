resource "dynatrace_openpipeline_v2_metrics_ingestsources" "RabbitMQ" {
  enabled      = true
  display_name = "RabbitMQ"
  source       = "com.dynatrace.rabbitmq"
  source_type  = "extension"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.rabbitmq"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "3.0.0"
    }
  }
  static_routing {
    pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDFjMGJjZGI2LWU1NmItMzVkMy1hZWRhLTUwZjEyNjkyY2E1Zr7vVN4V2t6t"
    pipeline_type = "custom"
  }
}
