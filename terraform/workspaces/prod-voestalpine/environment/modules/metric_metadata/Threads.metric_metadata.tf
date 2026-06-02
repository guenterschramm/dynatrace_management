resource "dynatrace_metric_metadata" "Threads" {
  display_name       = "Threads"
  metric_id          = "metric-memcached.threads"
  source_entity_type = "process_group_instance"
  unit               = "Count"
}
