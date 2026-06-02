resource "dynatrace_metric_metadata" "Memory_reclaims" {
  display_name       = "Memory reclaims"
  metric_id          = "metric-memcached.reclaimed.count"
  source_entity_type = "process_group_instance"
  unit               = "Count"
}
