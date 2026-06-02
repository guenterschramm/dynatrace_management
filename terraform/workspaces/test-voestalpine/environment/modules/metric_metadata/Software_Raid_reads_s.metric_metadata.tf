resource "dynatrace_metric_metadata" "Software_Raid_reads_s" {
  description  = "Number of read operations from Software Raid per second"
  display_name = "Software Raid reads/s"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.software-raid.operations.read"
  unit         = "PerSecond"
}
