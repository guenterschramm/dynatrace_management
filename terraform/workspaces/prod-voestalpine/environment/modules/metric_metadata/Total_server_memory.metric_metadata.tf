resource "dynatrace_metric_metadata" "Total_server_memory" {
  description        = "Amount of memory the server has committed using the memory manager"
  display_name       = "Total server memory"
  metric_id          = "metric-sql-server.local.memory.total"
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
