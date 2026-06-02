resource "dynatrace_metric_metadata" "Redo_queue_size" {
  description        = "Amount of log records in the log files of the secondary replica that has not yet been redone"
  display_name       = "Redo queue size"
  metric_id          = "metric-sql-server.always-on.db.redoQueueSize"
  source_entity_type = "sql:sql_server_availability_database"
  unit               = "KiloByte"
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
    min_value  = 0
    value_type = "error"
  }
}
