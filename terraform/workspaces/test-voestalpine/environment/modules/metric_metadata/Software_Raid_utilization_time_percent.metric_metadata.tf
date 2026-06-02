resource "dynatrace_metric_metadata" "Software_Raid_utilization_time_percent" {
  description  = "Percentage of time spent on Software Raid I/O operations"
  display_name = "Software Raid utilization time percent"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.software-raid.utilization.timepercent"
  unit         = "Percent"
}
