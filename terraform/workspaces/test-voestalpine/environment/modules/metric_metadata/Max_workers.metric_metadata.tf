resource "dynatrace_metric_metadata" "Max_workers" {
  description        = "Maximum number of workers that can be active"
  display_name       = "Max workers"
  metric_id          = "metric-sql-server.worker.maxWorkers"
  source_entity_type = "sql:sql_server_instance"
  unit               = "gauge"
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
