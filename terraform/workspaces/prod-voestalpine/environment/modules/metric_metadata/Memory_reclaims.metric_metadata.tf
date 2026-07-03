resource "dynatrace_metric_metadata" "Memory_reclaims" {
  description        = "Number of memory reclaims in Memcached"
  display_name       = "Memory reclaims"
  metric_id          = "metric-memcached.reclaimed.count"
  source_entity_type = "process_group_instance"
  unit               = "Count"
}
