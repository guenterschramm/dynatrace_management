resource "dynatrace_metric_metadata" "Get_misses" {
  description        = "Number of unsuccessful get commands in Memcached"
  display_name       = "Get misses"
  metric_id          = "metric-memcached.get_misses.count"
  source_entity_type = "process_group_instance"
  unit               = "Count"
}
