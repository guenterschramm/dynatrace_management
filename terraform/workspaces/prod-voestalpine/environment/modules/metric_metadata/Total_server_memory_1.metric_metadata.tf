resource "dynatrace_metric_metadata" "Total_server_memory_1" {
  description        = "Amount of memory the server has committed using the memory manager"
  display_name       = "Total server memory"
  metric_id          = "metric-sql-server.memory.total"
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
