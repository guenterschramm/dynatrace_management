resource "dynatrace_metric_metadata" "Processes_blocked_1" {
  description        = "Number of currently blocked processes"
  display_name       = "Processes blocked"
  metric_id          = "metric-sql-server.local.general.processesBlocked"
  source_entity_type = "sql:sql_server_local_instance"
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "Host"
      key          = "host"
    }
  }
  metric_properties {
    min_value  = 0
    value_type = "error"
  }
}
