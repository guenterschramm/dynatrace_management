resource "dynatrace_metric_metadata" "Volume_size" {
  description         = "Size of volume in bytes"
  display_name        = "Volume size"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.volume.size"
  unit                = "Byte"
  unit_display_format = "binary"
}
