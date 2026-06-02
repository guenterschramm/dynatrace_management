resource "dynatrace_metric_metadata" "Latch_waits_1" {
  description        = "Number of latch requests that could not be granted immediately"
  display_name       = "Latch waits"
  metric_id          = "metric-sql-server.local.latches.waits.count"
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
