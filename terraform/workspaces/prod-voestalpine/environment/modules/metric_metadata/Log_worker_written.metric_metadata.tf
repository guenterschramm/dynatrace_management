resource "dynatrace_metric_metadata" "Log_worker_written" {
  display_name       = "Log worker written"
  metric_id          = "metric-memcached.log_worker_written.count"
  source_entity_type = "process_group_instance"
  unit               = "Count"
}
