resource "dynatrace_metric_metadata" "Deadlocks" {
  description        = "Number of lock requests that resulted in a deadlock"
  display_name       = "Deadlocks"
  metric_id          = "metric-sql-server.locks.deadlocks.count"
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
