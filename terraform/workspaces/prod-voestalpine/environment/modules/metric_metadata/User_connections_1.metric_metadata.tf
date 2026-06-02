resource "dynatrace_metric_metadata" "User_connections_1" {
  description        = "Number of users currently connected to SQL Server"
  display_name       = "User connections"
  metric_id          = "metric-sql-server.local.general.userConnections"
  source_entity_type = "sql:sql_server_local_instance"
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "Host"
      key          = "host"
    }
  }
  metric_properties {
    min_value  = 0
    value_type = "error"
  }
}
