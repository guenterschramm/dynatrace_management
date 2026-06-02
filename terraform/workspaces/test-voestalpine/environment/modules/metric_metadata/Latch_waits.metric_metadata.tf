resource "dynatrace_metric_metadata" "Latch_waits" {
  description        = "Number of latch requests that could not be granted immediately"
  display_name       = "Latch waits"
  metric_id          = "metric-sql-server.latches.waits.count"
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
