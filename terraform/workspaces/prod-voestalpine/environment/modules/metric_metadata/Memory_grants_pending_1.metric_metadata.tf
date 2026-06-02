resource "dynatrace_metric_metadata" "Memory_grants_pending_1" {
  description        = "Number of processes waiting for a workspace memory grant"
  display_name       = "Memory grants pending"
  metric_id          = "metric-sql-server.local.memory.grantsPending"
  source_entity_type = "sql:sql_server_local_instance"
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "Host"
      key          = "host"
    }
  }
  metric_properties {
    min_value  = 0
    value_type = "error"
  }
}
