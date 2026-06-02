resource "dynatrace_metric_metadata" "Volume_filesystem_space_size" {
  description         = "Volume filesystem total space size"
  display_name        = "Volume filesystem space size"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.volume.space.total"
  unit                = "Byte"
  unit_display_format = "binary"
}
