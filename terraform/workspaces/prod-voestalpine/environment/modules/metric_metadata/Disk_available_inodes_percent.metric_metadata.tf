resource "dynatrace_metric_metadata" "Disk_available_inodes_percent" {
  description  = "Percentage of inodes available on the filesystem"
  display_name = "Disk available inodes percent"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.disk.inodes.availablepercent"
  unit         = "Percent"
}
