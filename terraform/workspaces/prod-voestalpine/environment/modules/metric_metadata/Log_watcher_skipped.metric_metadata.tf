resource "dynatrace_metric_metadata" "Log_watcher_skipped" {
  display_name       = "Log watcher skipped"
  metric_id          = "metric-memcached.log_watcher_skipped.count"
  source_entity_type = "process_group_instance"
  unit               = "Count"
}
