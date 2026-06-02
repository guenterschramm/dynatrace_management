resource "dynatrace_metric_metadata" "Logins" {
  description        = "Number of logins started, excluding pooled connections"
  display_name       = "Logins"
  metric_id          = "metric-sql-server.general.logins.count"
  source_entity_type = "sql:sql_server_instance"
  unit               = "Count"
  dimensions {
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
    value_type = "error"
  }
}
