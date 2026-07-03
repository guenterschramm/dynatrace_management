resource "dynatrace_metric_metadata" "Write_throughput" {
  description        = "Number of bytes written to Memcached"
  display_name       = "Write throughput"
  metric_id          = "metric-memcached.bytes_written.count"
  source_entity_type = "process_group_instance"
  unit               = "Byte"
}
