resource "dynatrace_metric_metadata" "Memory_bytes" {
  display_name       = "Memory bytes"
  metric_id          = "metric-memcached.bytes"
  source_entity_type = "process_group_instance"
  unit               = "Byte"
}
