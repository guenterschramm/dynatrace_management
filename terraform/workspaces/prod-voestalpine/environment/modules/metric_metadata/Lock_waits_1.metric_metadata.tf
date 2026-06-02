resource "dynatrace_metric_metadata" "Lock_waits_1" {
  description        = "Number of lock requests that required the caller to wait"
  display_name       = "Lock waits"
  metric_id          = "metric-sql-server.local.locks.waits.count"
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
