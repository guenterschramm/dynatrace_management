resource "dynatrace_metric_metadata" "Partition_filesystem_space_size" {
  description         = "Partition filesystem total space size"
  display_name        = "Partition filesystem space size"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.partition.space.total"
  unit                = "Byte"
  unit_display_format = "binary"
}
