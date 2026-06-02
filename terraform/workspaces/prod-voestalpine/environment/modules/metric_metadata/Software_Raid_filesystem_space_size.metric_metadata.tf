resource "dynatrace_metric_metadata" "Software_Raid_filesystem_space_size" {
  description         = "Software Raid filesystem total space size"
  display_name        = "Software Raid filesystem space size"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.software-raid.space.total"
  unit                = "Byte"
  unit_display_format = "binary"
}
