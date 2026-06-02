resource "dynatrace_metric_metadata" "Software_Raid_size" {
  description         = "Size of Software Raid in bytes"
  display_name        = "Software Raid size"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.software-raid.size"
  unit                = "Byte"
  unit_display_format = "binary"
}
