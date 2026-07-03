resource "dynatrace_metric_metadata" "Connections" {
  description        = "Current number of client connections to Memcached"
  display_name       = "Connections"
  metric_id          = "metric-memcached.curr_connections"
  source_entity_type = "process_group_instance"
  unit               = "Count"
}
