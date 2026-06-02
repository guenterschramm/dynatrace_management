resource "dynatrace_metric_metadata" "Rejected_connections" {
  display_name       = "Rejected connections"
  metric_id          = "metric-memcached.rejected_connections.count"
  source_entity_type = "process_group_instance"
  unit               = "Count"
}
