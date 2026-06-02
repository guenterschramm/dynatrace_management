resource "dynatrace_metric_metadata" "Secondary_recovery_health" {
  description        = "Indicates the recovery health of a secondary replica"
  display_name       = "Secondary recovery health"
  metric_id          = "metric-sql-server.always-on.ag.secondaryRecoveryHealth"
  source_entity_type = "sql:sql_server_availability_group"
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
      display_name = "Availability group automated backup preference"
      key          = "availability.group.automated_backup_preference"
    }
    dimension {
      display_name = "Availability group primary recovery health"
      key          = "availability.group.primary_recovery_health"
    }
    dimension {
      display_name = "Availability group secondary recovery health"
      key          = "availability.group.secondary_recovery_health"
    }
    dimension {
      display_name = "Availability group synchronization health"
      key          = "availability.group.synchronization_health"
    }
  }
  metric_properties {
    max_value  = 1
    min_value  = 0
    value_type = "score"
  }
}
