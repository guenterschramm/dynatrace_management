resource "dynatrace_metric_metadata" "Disk_read_bytes_s" {
  description         = "Device read throughput in bytes per second"
  display_name        = "Disk read bytes/s"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.disk.throughput.read"
  unit                = "BytePerSecond"
  unit_display_format = "binary"
}
