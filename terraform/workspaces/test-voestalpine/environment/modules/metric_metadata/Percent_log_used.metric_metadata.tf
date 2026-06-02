resource "dynatrace_metric_metadata" "Percent_log_used" {
  description        = "Percentage of space in the log that is in use"
  display_name       = "Percent log used"
  metric_id          = "metric-sql-server.databases.log.percentUsed"
  source_entity_type = "sql:sql_server_database"
  unit               = "Percent"
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
