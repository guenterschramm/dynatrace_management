resource "dynatrace_metric_metadata" "Lock_timeouts" {
  description        = "Number of lock requests that timed out, including requests for NOWAIT locks"
  display_name       = "Lock timeouts"
  metric_id          = "metric-sql-server.locks.timeouts.count"
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
