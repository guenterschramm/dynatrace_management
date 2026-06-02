resource "dynatrace_metric_metadata" "Partition_read_bytes_s" {
  description         = "Partition read throughput in bytes per second"
  display_name        = "Partition read bytes/s"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.partition.throughput.read"
  unit                = "BytePerSecond"
  unit_display_format = "binary"
}
