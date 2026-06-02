resource "dynatrace_metric_metadata" "Software_Raid_available_inodes_percent" {
  description  = "Percentage of inodes available on the filesystem"
  display_name = "Software Raid available inodes percent"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.software-raid.inodes.availablepercent"
  unit         = "Percent"
}
