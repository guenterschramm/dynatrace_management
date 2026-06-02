resource "dynatrace_metric_metadata" "Lock_waits" {
  description        = "Number of lock requests that required the caller to wait"
  display_name       = "Lock waits"
  metric_id          = "metric-sql-server.locks.waits.count"
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
