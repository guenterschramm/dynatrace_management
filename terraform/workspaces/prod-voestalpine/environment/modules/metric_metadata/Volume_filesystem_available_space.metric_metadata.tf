resource "dynatrace_metric_metadata" "Volume_filesystem_available_space" {
  description         = "Amount of free space available on the volume filesystem"
  display_name        = "Volume filesystem available space"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.volume.space.available"
  unit                = "Byte"
  unit_display_format = "binary"
}
