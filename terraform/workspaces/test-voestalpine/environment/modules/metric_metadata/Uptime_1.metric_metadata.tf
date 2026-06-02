resource "dynatrace_metric_metadata" "Uptime_1" {
  description        = "Time in seconds since instance was last started"
  display_name       = "Uptime"
  metric_id          = "metric-sql-server.uptime"
  source_entity_type = "sql:sql_server_instance"
  unit               = "Seconds"
  dimensions {
    dimension {
      display_name = "DB Instance Version"
      key          = "server_version"
    }
    dimension {
      display_name = "Major version"
      key          = "major_version"
    }
    dimension {
      display_name = "Start time"
      key          = "start_time"
    }
    dimension {
      display_name = "Edition"
      key          = "edition"
    }
    dimension {
      display_name = "Affinity type"
      key          = "affinity_type"
    }
    dimension {
      display_name = "Instance name"
      key          = "instance"
    }
    dimension {
      display_name = "Server name"
      key          = "server"
    }
  }
  metric_properties {
    min_value  = 0
    value_type = "score"
  }
}
