resource "dynatrace_metric_metadata" "Size_of_the_last_backup" {
  description        = "Size of the last backup of that type"
  display_name       = "Size of the last backup"
  metric_id          = "metric-sql-server.databases.backup.size"
  source_entity_type = "sql:sql_server_database"
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
    dimension {
      display_name = "Database name"
      key          = "database"
    }
    dimension {
      display_name = "Backup type"
      key          = "backup_type"
    }
    dimension {
      display_name = "Device type"
      key          = "device_type"
    }
    dimension {
      display_name = "Recovery model"
      key          = "recovery_model"
    }
    dimension {
      display_name = "Software name"
      key          = "software_name"
    }
  }
  metric_properties {
    min_value  = 0
    value_type = "unknown"
  }
}
