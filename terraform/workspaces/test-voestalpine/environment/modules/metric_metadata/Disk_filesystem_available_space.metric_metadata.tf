resource "dynatrace_metric_metadata" "Disk_filesystem_available_space" {
  description         = "Amount of free space available on the disk filesystem"
  display_name        = "Disk filesystem available space"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.disk.space.available"
  unit                = "Byte"
  unit_display_format = "binary"
}
