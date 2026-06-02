resource "dynatrace_metric_metadata" "Receives_from_replica" {
  description        = "Number of messages received from replica"
  display_name       = "Receives from replica"
  metric_id          = "metric-sql-server.replica.receives.count"
  source_entity_type = "sql:sql_server_instance"
  unit               = "Count"
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
