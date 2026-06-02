resource "dynatrace_metric_metadata" "Log_watcher_sent" {
  display_name       = "Log watcher sent"
  metric_id          = "metric-memcached.log_watcher_sent.count"
  source_entity_type = "process_group_instance"
  unit               = "Count"
}
