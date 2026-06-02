resource "dynatrace_metric_metadata" "Sends_to_transport" {
  description        = "Number of messages sent across network to replicas"
  display_name       = "Sends to transport"
  metric_id          = "metric-sql-server.replica.sendsToTransport.count"
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
