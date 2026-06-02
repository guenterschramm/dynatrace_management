resource "dynatrace_metric_metadata" "Software_Raid_write_time" {
  description  = "Average time of write operation. Shows average Software Raid latency during write."
  display_name = "Software Raid write time"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.software-raid.latency.write"
  unit         = "MilliSecond"
}
