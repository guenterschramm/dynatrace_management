resource "dynatrace_metric_metadata" "Page_life_expectancy" {
  description        = "Number of seconds a page will stay in the buffer pool without references"
  display_name       = "Page life expectancy"
  metric_id          = "metric-sql-server.buffers.pageLifeExpectancy"
  source_entity_type = "sql:sql_server_instance"
  unit               = "Second"
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
}
