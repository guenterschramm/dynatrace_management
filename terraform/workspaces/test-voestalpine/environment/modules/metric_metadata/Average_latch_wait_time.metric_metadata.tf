resource "dynatrace_metric_metadata" "Average_latch_wait_time" {
  description        = "Average latch wait time for latch requests that had to wait"
  display_name       = "Average latch wait time"
  metric_id          = "metric-sql-server.latches.averageWaitTime.count"
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
