resource "dynatrace_metric_metadata" "Volume_filesystem_used_space" {
  description         = "Amount of space used by the volume filesystem"
  display_name        = "Volume filesystem used space"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.volume.space.used"
  unit                = "Byte"
  unit_display_format = "binary"
}
