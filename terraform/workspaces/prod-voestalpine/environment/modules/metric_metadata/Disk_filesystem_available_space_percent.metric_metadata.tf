resource "dynatrace_metric_metadata" "Disk_filesystem_available_space_percent" {
  description  = "Percentage of free space available on the disk filesystem"
  display_name = "Disk filesystem available space percent"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.disk.space.availablepercent"
  unit         = "Percent"
}
