resource "dynatrace_metric_metadata" "Log_flush_waits" {
  description        = "Number of commits waiting for the log flush"
  display_name       = "Log flush waits"
  metric_id          = "metric-sql-server.databases.log.flushWaits.count"
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
    value_type = "error"
  }
}
