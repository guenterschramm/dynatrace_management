resource "dynatrace_metric_metadata" "Memory_grants_pending" {
  description        = "Number of processes waiting for a workspace memory grant"
  display_name       = "Memory grants pending"
  metric_id          = "metric-sql-server.memory.grantsPending"
  source_entity_type = "sql:sql_server_instance"
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "Instance name"
      key          = "instance"
    }
    dimension {
      display_name = "Server name"
      key          = "server"
    }
  }
  metric_properties {
    min_value  = 0
    value_type = "error"
  }
}
