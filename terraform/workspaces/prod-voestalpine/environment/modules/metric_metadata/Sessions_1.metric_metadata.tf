resource "dynatrace_metric_metadata" "Sessions_1" {
  description        = "Number of active sessions per user"
  display_name       = "Sessions"
  metric_id          = "metric-sql-server.sessions"
  source_entity_type = "sql:sql_server_instance"
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "Login name"
      key          = "login_name"
    }
    dimension {
      display_name = "NT domain"
      key          = "nt_domain"
    }
    dimension {
      display_name = "NT user name"
      key          = "nt_user_name"
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
    value_type = "unknown"
  }
}
