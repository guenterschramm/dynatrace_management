resource "dynatrace_metric_metadata" "Bytes_received_from_replica" {
  description        = "Message bytes received from replica"
  display_name       = "Bytes received from replica"
  metric_id          = "metric-sql-server.replica.bytesReceived.count"
  source_entity_type = "sql:sql_server_instance"
  unit               = "Byte"
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
