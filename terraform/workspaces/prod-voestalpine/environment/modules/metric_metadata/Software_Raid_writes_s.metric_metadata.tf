resource "dynatrace_metric_metadata" "Software_Raid_writes_s" {
  description  = "Number of write operations to Software Raid per second"
  display_name = "Software Raid writes/s"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.software-raid.operations.write"
  unit         = "PerSecond"
}
