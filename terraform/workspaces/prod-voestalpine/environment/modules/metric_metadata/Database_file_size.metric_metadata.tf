resource "dynatrace_metric_metadata" "Database_file_size" {
  description        = "Total size of files of specific types per database"
  display_name       = "Database file size"
  metric_id          = "metric-sql-server.databases.file.size"
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
    dimension {
      display_name = "File type"
      key          = "file_type"
    }
  }
  metric_properties {
    min_value  = 0
    value_type = "unknown"
  }
}
