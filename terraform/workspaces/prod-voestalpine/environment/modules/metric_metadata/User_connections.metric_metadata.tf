resource "dynatrace_metric_metadata" "User_connections" {
  description        = "Number of users currently connected to SQL Server"
  display_name       = "User connections"
  metric_id          = "metric-sql-server.general.userConnections"
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
