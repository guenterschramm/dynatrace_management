resource "dynatrace_openpipeline_v2_logs_ingestsources" "SQL_Server" {
  enabled      = true
  display_name = "SQL Server"
  source       = "extension:com.dynatrace.extension.sql-server"
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
    pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGFjM2MwZWRkLTFiZTktMzRlZi04ZDc4LTAyMzk3N2NhZGM0N77vVN4V2t6t"
    pipeline_type = "custom"
  }
}
