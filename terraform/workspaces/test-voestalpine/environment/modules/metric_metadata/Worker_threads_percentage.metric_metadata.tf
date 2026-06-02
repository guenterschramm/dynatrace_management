resource "dynatrace_metric_metadata" "Worker_threads_percentage" {
  description        = "Percentage of worker threads in use"
  display_name       = "Worker threads percentage"
  metric_id          = "metric-sql-server.worker.threadsPercent"
  source_entity_type = "sql:sql_server_instance"
  unit               = "Percent"
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
