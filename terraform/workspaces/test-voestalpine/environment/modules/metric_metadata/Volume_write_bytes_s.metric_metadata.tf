resource "dynatrace_metric_metadata" "Volume_write_bytes_s" {
  description         = "Volume write throughput in bytes per second"
  display_name        = "Volume write bytes/s"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.volume.throughput.write"
  unit                = "BytePerSecond"
  unit_display_format = "binary"
}
