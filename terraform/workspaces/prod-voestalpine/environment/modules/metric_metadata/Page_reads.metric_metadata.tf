resource "dynatrace_metric_metadata" "Page_reads" {
  description        = "Number of physical database page reads that are issued"
  display_name       = "Page reads"
  metric_id          = "metric-sql-server.buffers.pageReads.count"
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
