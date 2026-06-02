resource "dynatrace_metric_metadata" "Log_worker_dropped" {
  display_name       = "Log worker dropped"
  metric_id          = "metric-memcached.log_worker_dropped.count"
  source_entity_type = "process_group_instance"
  unit               = "Count"
}
