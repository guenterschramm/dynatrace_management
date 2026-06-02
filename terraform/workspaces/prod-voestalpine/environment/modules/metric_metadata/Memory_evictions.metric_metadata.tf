resource "dynatrace_metric_metadata" "Memory_evictions" {
  display_name       = "Memory evictions"
  metric_id          = "metric-memcached.evictions.count"
  source_entity_type = "process_group_instance"
  unit               = "Count"
}
