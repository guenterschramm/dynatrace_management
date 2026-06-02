resource "dynatrace_metric_metadata" "Log_truncations" {
  description        = "Number of times the transaction log has been truncated (in Simple Recovery Model)"
  display_name       = "Log truncations"
  metric_id          = "metric-sql-server.databases.log.truncations.count"
  source_entity_type = "sql:sql_server_database"
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
    dimension {
      display_name = "Database name"
      key          = "database"
    }
  }
  metric_properties {
    min_value  = 0
    value_type = "unknown"
  }
}
