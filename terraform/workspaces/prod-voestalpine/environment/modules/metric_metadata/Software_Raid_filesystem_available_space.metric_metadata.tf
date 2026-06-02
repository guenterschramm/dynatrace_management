resource "dynatrace_metric_metadata" "Software_Raid_filesystem_available_space" {
  description         = "Amount of free space available on the Software Raid filesystem"
  display_name        = "Software Raid filesystem available space"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.software-raid.space.available"
  unit                = "Byte"
  unit_display_format = "binary"
}
