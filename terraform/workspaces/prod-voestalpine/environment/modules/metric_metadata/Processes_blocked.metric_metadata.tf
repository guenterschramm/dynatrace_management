resource "dynatrace_metric_metadata" "Processes_blocked" {
  description        = "Number of currently blocked processes"
  display_name       = "Processes blocked"
  metric_id          = "metric-sql-server.general.processesBlocked"
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
