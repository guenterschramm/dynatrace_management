resource "dynatrace_metric_metadata" "Disk_write_bytes_s" {
  description         = "Device write throughput in bytes per second"
  display_name        = "Disk write bytes/s"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.disk.throughput.write"
  unit                = "BytePerSecond"
  unit_display_format = "binary"
}
