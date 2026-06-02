resource "dynatrace_metric_metadata" "Deadlocks_1" {
  description        = "Number of lock requests that resulted in a deadlock"
  display_name       = "Deadlocks"
  metric_id          = "metric-sql-server.local.locks.deadlocks.count"
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
