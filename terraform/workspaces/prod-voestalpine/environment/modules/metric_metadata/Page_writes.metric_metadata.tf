resource "dynatrace_metric_metadata" "Page_writes" {
  description        = "Number of physical database page writes that are issued"
  display_name       = "Page writes"
  metric_id          = "metric-sql-server.buffers.pageWrites.count"
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
}
