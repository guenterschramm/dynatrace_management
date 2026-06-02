resource "dynatrace_metric_metadata" "Partition_filesystem_available_space_percent" {
  description  = "Percentage of free space available on the partition filesystem"
  display_name = "Partition filesystem available space percent"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.partition.space.availablepercent"
  unit         = "Percent"
}
