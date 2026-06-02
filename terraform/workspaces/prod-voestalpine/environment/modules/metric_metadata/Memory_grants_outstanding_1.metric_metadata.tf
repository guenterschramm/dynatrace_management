resource "dynatrace_metric_metadata" "Memory_grants_outstanding_1" {
  description        = "Number of processes that have successfully acquired a workspace memory grant"
  display_name       = "Memory grants outstanding"
  metric_id          = "metric-sql-server.local.memory.grantsOutstanding"
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
    value_type = "score"
  }
}
