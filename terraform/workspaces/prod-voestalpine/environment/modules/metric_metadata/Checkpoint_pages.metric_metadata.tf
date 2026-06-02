resource "dynatrace_metric_metadata" "Checkpoint_pages" {
  description        = "Number of pages flushed to disk by a checkpoint or other operations that require all dirty pages to be flushed"
  display_name       = "Checkpoint pages"
  metric_id          = "metric-sql-server.local.buffers.checkpointPages.count"
  source_entity_type = "sql:sql_server_local_instance"
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "Host"
      key          = "host"
    }
  }
}
