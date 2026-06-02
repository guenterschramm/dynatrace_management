resource "dynatrace_metric_metadata" "Software_Raid_used_inodes_percent" {
  description  = "Percentage of inodes used on the filesystem"
  display_name = "Software Raid used inodes percent"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.software-raid.inodes.usedpercent"
  unit         = "Percent"
}
