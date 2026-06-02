resource "dynatrace_metric_metadata" "Volume_filesystem_available_inodes_percent" {
  description  = "Percentage of inodes available on the filesystem"
  display_name = "Volume filesystem available inodes percent"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.volume.inodes.availablepercent"
  unit         = "Percent"
}
