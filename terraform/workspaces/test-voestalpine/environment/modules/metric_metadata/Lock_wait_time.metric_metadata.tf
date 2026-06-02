resource "dynatrace_metric_metadata" "Lock_wait_time" {
  description        = "Wait time for locks"
  display_name       = "Lock wait time"
  metric_id          = "metric-sql-server.locks.waitTime.count"
  source_entity_type = "sql:sql_server_instance"
  unit               = "MilliSecond"
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
