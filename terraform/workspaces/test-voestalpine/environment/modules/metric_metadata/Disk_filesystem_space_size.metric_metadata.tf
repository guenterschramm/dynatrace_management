resource "dynatrace_metric_metadata" "Disk_filesystem_space_size" {
  description         = "Disk filesystem total space size"
  display_name        = "Disk filesystem space size"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.disk.space.total"
  unit                = "Byte"
  unit_display_format = "binary"
}
