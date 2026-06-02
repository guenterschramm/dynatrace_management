resource "dynatrace_metric_metadata" "Page_life_expectancy_1" {
  description        = "Number of seconds a page will stay in the buffer pool without references"
  display_name       = "Page life expectancy"
  metric_id          = "metric-sql-server.local.buffers.pageLifeExpectancy"
  source_entity_type = "sql:sql_server_local_instance"
  unit               = "Second"
  dimensions {
    dimension {
      display_name = "Host"
      key          = "host"
    }
  }
}
