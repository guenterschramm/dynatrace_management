resource "dynatrace_metric_metadata" "Transactions" {
  description        = "Number of transaction enlistments (local, dtc, and bound)"
  display_name       = "Transactions"
  metric_id          = "metric-sql-server.local.general.transactions"
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
    value_type = "unknown"
  }
}
