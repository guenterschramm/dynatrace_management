resource "dynatrace_metric_metadata" "Time_spent_in_user_mode" {
  description        = "Time spent by all threads in user mode"
  display_name       = "Time spent in user mode"
  metric_id          = "metric-sql-server.cpu.userTime.count"
  source_entity_type = "sql:sql_server_instance"
  unit               = "MilliSecond"
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
