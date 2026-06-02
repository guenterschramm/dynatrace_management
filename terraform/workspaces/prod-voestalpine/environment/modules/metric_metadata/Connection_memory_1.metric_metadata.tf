resource "dynatrace_metric_metadata" "Connection_memory_1" {
  description        = "Total amount of dynamic memory the server is using for maintaining connections"
  display_name       = "Connection memory"
  metric_id          = "metric-sql-server.local.memory.connection"
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
    value_type = "error"
  }
}
