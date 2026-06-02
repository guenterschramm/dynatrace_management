resource "dynatrace_metric_metadata" "Partition_write_bytes_s" {
  description         = "Partition write throughput in bytes per second"
  display_name        = "Partition write bytes/s"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.partition.throughput.write"
  unit                = "BytePerSecond"
  unit_display_format = "binary"
}
