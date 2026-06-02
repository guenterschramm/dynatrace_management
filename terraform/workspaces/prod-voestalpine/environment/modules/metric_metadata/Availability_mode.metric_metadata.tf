resource "dynatrace_metric_metadata" "Availability_mode" {
  description        = "The availability mode of the replica"
  display_name       = "Availability mode"
  metric_id          = "metric-sql-server.always-on.ar.availabilityMode"
  source_entity_type = "sql:sql_server_availability_replica"
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
      display_name = "Availability replica availability mode"
      key          = "availability.replica.availability_mode"
    }
    dimension {
      display_name = "Availability replica failover mode"
      key          = "availability.replica.failover_mode"
    }
    dimension {
      display_name = "Availability replica is local"
      key          = "availability.replica.is_local"
    }
    dimension {
      display_name = "Availability replica role"
      key          = "availability.replica.role"
    }
    dimension {
      display_name = "Availability replica operational state"
      key          = "availability.replica.operational_state"
    }
    dimension {
      display_name = "Availability replica recovery health"
      key          = "availability.replica.recovery_health"
    }
    dimension {
      display_name = "Availability replica synchronization health"
      key          = "availability.replica.synchronization_health"
    }
    dimension {
      display_name = "Availability replica connected state"
      key          = "availability.replica.connected_state"
    }
  }
  metric_properties {
    max_value  = 4
    min_value  = 0
    value_type = "unknown"
  }
}
