resource "dynatrace_metric_metadata" "Free_list_stalls" {
  description        = "Number of requests that had to wait for a free page"
  display_name       = "Free list stalls"
  metric_id          = "metric-sql-server.buffers.freeListStalls.count"
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
