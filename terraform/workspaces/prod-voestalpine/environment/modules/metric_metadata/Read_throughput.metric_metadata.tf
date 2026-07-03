resource "dynatrace_metric_metadata" "Read_throughput" {
  description        = "Number of bytes read from Memcached"
  display_name       = "Read throughput"
  metric_id          = "metric-memcached.bytes_read.count"
  source_entity_type = "process_group_instance"
  unit               = "Byte"
}
