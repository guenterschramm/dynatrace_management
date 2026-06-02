resource "dynatrace_metric_metadata" "Disk_used_inodes_percent" {
  description  = "Percentage of inodes used on the filesystem"
  display_name = "Disk used inodes percent"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.disk.inodes.usedpercent"
  unit         = "Percent"
}
