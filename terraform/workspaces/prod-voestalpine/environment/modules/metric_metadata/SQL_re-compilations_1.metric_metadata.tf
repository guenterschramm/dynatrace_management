resource "dynatrace_metric_metadata" "SQL_re-compilations_1" {
  description        = "Number of SQL statement re-compilations"
  display_name       = "SQL re-compilations"
  metric_id          = "metric-sql-server.local.sql.recompilations.count"
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
