resource "dynatrace_metric_metadata" "Target_server_memory" {
  description        = "Amount of memory that can be consumed by memory manager"
  display_name       = "Target server memory"
  metric_id          = "metric-sql-server.local.memory.target"
  source_entity_type = "sql:sql_server_local_instance"
  unit               = "KiloByte"
  dimensions {
    dimension {
      display_name = "Host"
      key          = "host"
    }
  }
  metric_properties {
    min_value  = 0
    value_type = "unknown"
  }
}
