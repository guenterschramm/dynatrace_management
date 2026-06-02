resource "dynatrace_metric_metadata" "Physical_memory" {
  description        = "Total amount of physical memory on the machine"
  display_name       = "Physical memory"
  metric_id          = "metric-sql-server.memory.physical"
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
