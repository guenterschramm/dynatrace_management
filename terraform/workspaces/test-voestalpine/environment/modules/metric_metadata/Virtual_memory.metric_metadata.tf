resource "dynatrace_metric_metadata" "Virtual_memory" {
  description        = "Total amount of virtual address space available to the process in user mode"
  display_name       = "Virtual memory"
  metric_id          = "metric-sql-server.memory.virtual"
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
