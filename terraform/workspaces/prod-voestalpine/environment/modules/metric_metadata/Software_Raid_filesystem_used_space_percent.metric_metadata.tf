resource "dynatrace_metric_metadata" "Software_Raid_filesystem_used_space_percent" {
  description  = "Percentage of used space on the filesystem"
  display_name = "Software Raid filesystem used space percent"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.software-raid.space.usedpercent"
  unit         = "Percent"
}
