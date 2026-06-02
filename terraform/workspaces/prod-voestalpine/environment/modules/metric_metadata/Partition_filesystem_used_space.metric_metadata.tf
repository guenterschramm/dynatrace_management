resource "dynatrace_metric_metadata" "Partition_filesystem_used_space" {
  description         = "Amount of space used on the partition filesystem"
  display_name        = "Partition filesystem used space"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.partition.space.used"
  unit                = "Byte"
  unit_display_format = "binary"
}
