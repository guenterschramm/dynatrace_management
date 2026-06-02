resource "dynatrace_metric_metadata" "Software_Raid_write_bytes_s" {
  description         = "Software Raid write throughput in bytes per second"
  display_name        = "Software Raid write bytes/s"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.software-raid.throughput.write"
  unit                = "BytePerSecond"
  unit_display_format = "binary"
}
