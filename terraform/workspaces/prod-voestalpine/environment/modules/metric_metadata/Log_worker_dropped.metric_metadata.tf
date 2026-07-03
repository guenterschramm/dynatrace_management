resource "dynatrace_metric_metadata" "Log_worker_dropped" {
  description        = "Number of log entries dropped by the log worker in Memcached"
  display_name       = "Log worker dropped"
  metric_id          = "metric-memcached.log_worker_dropped.count"
  source_entity_type = "process_group_instance"
  unit               = "Count"
}
