resource "dynatrace_metric_metadata" "Log_files_used_size" {
  description        = "The cumulative used size of all the log files in the database"
  display_name       = "Log files used size"
  metric_id          = "metric-sql-server.databases.log.filesUsedSize"
  source_entity_type = "sql:sql_server_database"
  unit               = "KiloByte"
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
