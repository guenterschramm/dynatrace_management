resource "dynatrace_metric_metadata" "Resent_messages" {
  description        = "Number of messages that had to be resent to replica"
  display_name       = "Resent messages"
  metric_id          = "metric-sql-server.replica.resentMessages.count"
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
    value_type = "error"
  }
}
