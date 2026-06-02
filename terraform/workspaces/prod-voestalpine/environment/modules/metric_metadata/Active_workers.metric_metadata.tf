resource "dynatrace_metric_metadata" "Active_workers" {
  description        = "Number of workers that are actively executing tasks"
  display_name       = "Active workers"
  metric_id          = "metric-sql-server.worker.activeWorkers"
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
