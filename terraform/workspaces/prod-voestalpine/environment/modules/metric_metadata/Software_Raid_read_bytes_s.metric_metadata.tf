resource "dynatrace_metric_metadata" "Software_Raid_read_bytes_s" {
  description         = "Software Raid read throughput in bytes per second"
  display_name        = "Software Raid read bytes/s"
  metric_id           = "metric-com.dynatrace.extension.disk-devices.software-raid.throughput.read"
  unit                = "BytePerSecond"
  unit_display_format = "binary"
}
