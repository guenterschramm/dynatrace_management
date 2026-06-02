resource "dynatrace_metric_metadata" "Sends_to_replica" {
  description        = "Number of messages queued to be sent to replica"
  display_name       = "Sends to replica"
  metric_id          = "metric-sql-server.replica.sends.count"
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
