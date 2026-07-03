resource "dynatrace_metric_metadata" "Uptime" {
  description        = "Uptime of the Memcached instance, in seconds"
  display_name       = "Uptime"
  metric_id          = "metric-memcached.uptime"
  source_entity_type = "process_group_instance"
  unit               = "Second"
}
