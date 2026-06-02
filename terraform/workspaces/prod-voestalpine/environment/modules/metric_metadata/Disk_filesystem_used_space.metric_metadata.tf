resource "dynatrace_metric_metadata" "Disk_filesystem_used_space" {
  description         = "Amount of space used on the disk filesystem"
  display_name        = "Disk filesystem used space"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.disk.space.used"
  unit                = "Byte"
  unit_display_format = "binary"
}
