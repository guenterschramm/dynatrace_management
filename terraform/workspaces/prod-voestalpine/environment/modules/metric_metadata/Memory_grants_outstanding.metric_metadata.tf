resource "dynatrace_metric_metadata" "Memory_grants_outstanding" {
  description        = "Number of processes that have successfully acquired a workspace memory grant"
  display_name       = "Memory grants outstanding"
  metric_id          = "metric-sql-server.memory.grantsOutstanding"
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
    value_type = "score"
  }
}
