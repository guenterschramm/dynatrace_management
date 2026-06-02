resource "dynatrace_metric_metadata" "Partition_filesystem_available_space" {
  description         = "Amount of free space available on the partition filesystem"
  display_name        = "Partition filesystem available space"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.partition.space.available"
  unit                = "Byte"
  unit_display_format = "binary"
}
