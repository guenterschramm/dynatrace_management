resource "dynatrace_metric_metadata" "Volume_filesystem_used_inodes_percent" {
  description  = "Percentage of inodes used on the filesystem"
  display_name = "Volume filesystem used inodes percent"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.volume.inodes.usedpercent"
  unit         = "Percent"
}
