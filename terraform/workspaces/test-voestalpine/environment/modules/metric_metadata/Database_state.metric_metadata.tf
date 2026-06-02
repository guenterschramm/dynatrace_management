resource "dynatrace_metric_metadata" "Database_state" {
  description        = "State of the availability database"
  display_name       = "Database state"
  metric_id          = "metric-sql-server.always-on.db.state"
  source_entity_type = "sql:sql_server_availability_database"
  unit               = "State"
  dimensions {
    dimension {
      display_name = "Availability group ID"
      key          = "availability.group.id"
    }
    dimension {
      display_name = "Availability group name"
      key          = "availability.group.name"
    }
    dimension {
      display_name = "Availability replica ID"
      key          = "availability.replica.id"
    }
    dimension {
      display_name = "Availability replica name"
      key          = "availability.replica.name"
    }
    dimension {
      display_name = "Availability database ID"
      key          = "availability.database.id"
    }
    dimension {
      display_name = "Availability database name"
      key          = "availability.database.name"
    }
    dimension {
      display_name = "Availability database synchronization state"
      key          = "availability.database.synchronization_state"
    }
    dimension {
      display_name = "Availability database synchronization health"
      key          = "availability.database.synchronization_health"
    }
    dimension {
      display_name = "Availability database state"
      key          = "availability.database.state"
    }
  }
  metric_properties {
    max_value  = 6
    min_value  = 0
    value_type = "error"
  }
}
