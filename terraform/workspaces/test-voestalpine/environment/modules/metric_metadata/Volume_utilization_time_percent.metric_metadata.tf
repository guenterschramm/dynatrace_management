resource "dynatrace_metric_metadata" "Volume_utilization_time_percent" {
  description  = "Percentage of time spent on volume I/O operations"
  display_name = "Volume utilization time percent"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.volume.utilization.timepercent"
  unit         = "Percent"
}
