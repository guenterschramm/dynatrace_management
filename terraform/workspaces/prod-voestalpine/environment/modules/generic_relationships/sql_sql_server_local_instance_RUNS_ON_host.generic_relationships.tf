resource "dynatrace_generic_relationships" "sql_sql_server_local_instance_RUNS_ON_host" {
  enabled          = true
  created_by       = "com.dynatrace.extension.sql-server.wmi 1.3.0"
  from_type        = "sql:sql_server_local_instance"
  to_type          = "host"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(sql-server.local)"
      source_type = "Metrics"
    }
  }
}
