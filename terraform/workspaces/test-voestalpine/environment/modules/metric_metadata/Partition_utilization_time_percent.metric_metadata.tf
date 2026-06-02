resource "dynatrace_metric_metadata" "Partition_utilization_time_percent" {
  description  = "Percentage of time spent on partition I/O operations"
  display_name = "Partition utilization time percent"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.partition.utilization.timepercent"
  unit         = "Percent"
}
