resource "dynatrace_metric_metadata" "Target_server_memory" {
  description        = "Amount of memory that can be consumed by memory manager"
  display_name       = "Target server memory"
  metric_id          = "metric-sql-server.memory.target"
  source_entity_type = "sql:sql_server_instance"
  unit               = "KiloByte"
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
    value_type = "unknown"
  }
}
