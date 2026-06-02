resource "dynatrace_metric_metadata" "Connection_memory" {
  description        = "Total amount of dynamic memory the server is using for maintaining connections"
  display_name       = "Connection memory"
  metric_id          = "metric-sql-server.memory.connection"
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
    value_type = "error"
  }
}
