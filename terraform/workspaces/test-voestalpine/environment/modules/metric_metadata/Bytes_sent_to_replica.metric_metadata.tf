resource "dynatrace_metric_metadata" "Bytes_sent_to_replica" {
  description        = "Message bytes queued to be sent to replicas"
  display_name       = "Bytes sent to replica"
  metric_id          = "metric-sql-server.replica.bytesSent.count"
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
