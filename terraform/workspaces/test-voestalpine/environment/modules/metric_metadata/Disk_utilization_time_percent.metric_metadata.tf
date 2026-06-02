resource "dynatrace_metric_metadata" "Disk_utilization_time_percent" {
  description  = "Percentage of time spent on disk I/O operations"
  display_name = "Disk utilization time percent"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.disk.utilization.timepercent"
  unit         = "Percent"
}
