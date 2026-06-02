resource "dynatrace_metric_metadata" "Database_state_1" {
  description        = "Database state"
  display_name       = "Database state"
  metric_id          = "metric-sql-server.databases.state"
  source_entity_type = "sql:sql_server_database"
  unit               = "State"
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
      display_name = "Database state"
      key          = "database.state"
    }
    dimension {
      display_name = "Database recovery model"
      key          = "database.recovery_model"
    }
    dimension {
      display_name = "Database user access"
      key          = "database.user_access"
    }
    dimension {
      display_name = "Database updateability"
      key          = "database.updateability"
    }
  }
  metric_properties {
    max_value  = 10
    min_value  = 0
    value_type = "error"
  }
}
