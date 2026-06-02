resource "dynatrace_metric_metadata" "Software_Raid_filesystem_available_space_percent" {
  description  = "Percentage of free space available on the Software Raid filesystem"
  display_name = "Software Raid filesystem available space percent"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.software-raid.space.availablepercent"
  unit         = "Percent"
}
