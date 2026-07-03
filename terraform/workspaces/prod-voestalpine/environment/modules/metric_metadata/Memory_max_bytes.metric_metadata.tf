resource "dynatrace_metric_metadata" "Memory_max_bytes" {
  description        = "Maximum memory allocated for Memcached"
  display_name       = "Memory max bytes"
  metric_id          = "metric-memcached.limit_maxbytes"
  source_entity_type = "process_group_instance"
  unit               = "Byte"
}
