resource "dynatrace_metric_metadata" "Get_misses" {
  display_name       = "Get misses"
  metric_id          = "metric-memcached.get_misses.count"
  source_entity_type = "process_group_instance"
  unit               = "Count"
}
