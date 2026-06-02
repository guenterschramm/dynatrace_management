resource "dynatrace_metric_metadata" "Memory_max_bytes" {
  display_name       = "Memory max bytes"
  metric_id          = "metric-memcached.limit_maxbytes"
  source_entity_type = "process_group_instance"
  unit               = "Byte"
}
