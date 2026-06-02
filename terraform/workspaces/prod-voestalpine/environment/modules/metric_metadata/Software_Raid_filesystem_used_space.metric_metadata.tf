resource "dynatrace_metric_metadata" "Software_Raid_filesystem_used_space" {
  description         = "Amount of space used on the Software Raid filesystem"
  display_name        = "Software Raid filesystem used space"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.software-raid.space.used"
  unit                = "Byte"
  unit_display_format = "binary"
}
