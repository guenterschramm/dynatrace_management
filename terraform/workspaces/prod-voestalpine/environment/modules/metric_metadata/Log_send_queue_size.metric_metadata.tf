resource "dynatrace_metric_metadata" "Log_send_queue_size" {
  description        = "Amount of log records of the primary database not sent to the secondary databases"
  display_name       = "Log send queue size"
  metric_id          = "metric-sql-server.always-on.db.logSendQueueSize"
  source_entity_type = "sql:sql_server_availability_database"
  unit               = "KibiByte"
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
  }
  metric_properties {
    min_value  = 0
    value_type = "error"
  }
}
