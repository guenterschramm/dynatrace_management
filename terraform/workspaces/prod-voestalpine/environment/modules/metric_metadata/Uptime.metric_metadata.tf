resource "dynatrace_metric_metadata" "Uptime" {
  display_name       = "Uptime"
  metric_id          = "metric-memcached.uptime"
  source_entity_type = "process_group_instance"
  unit               = "Second"
}
