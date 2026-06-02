resource "dynatrace_metric_metadata" "Malloc_fails" {
  display_name       = "Malloc fails"
  metric_id          = "metric-memcached.malloc_fails.count"
  source_entity_type = "process_group_instance"
  unit               = "Count"
}
