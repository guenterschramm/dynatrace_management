resource "dynatrace_metric_metadata" "Page_splits" {
  description        = "Number of page splits that occur as a result of overflowing index pages"
  display_name       = "Page splits"
  metric_id          = "metric-sql-server.local.accessMethods.pageSplits.count"
  source_entity_type = "sql:sql_server_local_instance"
  unit               = "PerSecond"
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
