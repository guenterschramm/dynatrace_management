resource "dynatrace_metric_metadata" "Volume_read_bytes_s" {
  description         = "Volume read throughput in bytes per second"
  display_name        = "Volume read bytes/s"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.volume.throughput.read"
  unit                = "BytePerSecond"
  unit_display_format = "binary"
}
