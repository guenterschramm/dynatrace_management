resource "dynatrace_metric_metadata" "Server_locks_by_wait_type" {
  description        = "Time spent waiting for locks by wait type"
  display_name       = "Server locks by wait type"
  metric_id          = "metric-sql-server.locks.byWaitType"
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
