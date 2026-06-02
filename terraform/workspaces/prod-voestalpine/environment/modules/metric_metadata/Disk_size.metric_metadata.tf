resource "dynatrace_metric_metadata" "Disk_size" {
  description         = "Size of device in bytes"
  display_name        = "Disk size"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.disk.size"
  unit                = "Byte"
  unit_display_format = "binary"
}
