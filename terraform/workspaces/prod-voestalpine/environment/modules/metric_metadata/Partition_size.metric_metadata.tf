resource "dynatrace_metric_metadata" "Partition_size" {
  description         = "Size of partition in bytes"
  display_name        = "Partition size"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.partition.size"
  unit                = "Byte"
  unit_display_format = "binary"
}
