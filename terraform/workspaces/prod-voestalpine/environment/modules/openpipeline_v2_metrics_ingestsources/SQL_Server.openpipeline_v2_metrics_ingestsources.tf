resource "dynatrace_openpipeline_v2_metrics_ingestsources" "SQL_Server" {
  enabled      = true
  display_name = "SQL Server"
  source       = "com.dynatrace.extension.sql-server"
  source_type  = "extension"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.sql-server"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "3.1.2"
    }
  }
  static_routing {
    pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGYwMWRkMzAwLTM0OGUtMzc5My04YjBjLTMwOTA0ZDgzNWNmOb7vVN4V2t6t"
    pipeline_type = "custom"
  }
}
