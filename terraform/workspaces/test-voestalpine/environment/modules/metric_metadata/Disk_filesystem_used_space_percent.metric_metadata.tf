resource "dynatrace_metric_metadata" "Disk_filesystem_used_space_percent" {
  description  = "Percentage of used space on the disk filesystem"
  display_name = "Disk filesystem used space percent"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.disk.space.usedpercent"
  unit         = "Percent"
}
