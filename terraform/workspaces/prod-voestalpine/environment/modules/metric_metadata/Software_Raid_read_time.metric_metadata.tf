resource "dynatrace_metric_metadata" "Software_Raid_read_time" {
  description  = "Average time of read operation. Shows average Software Raid latency during read."
  display_name = "Software Raid read time"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.software-raid.latency.read"
  unit         = "MilliSecond"
}
