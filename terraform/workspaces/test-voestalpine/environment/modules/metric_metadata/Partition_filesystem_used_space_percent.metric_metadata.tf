resource "dynatrace_metric_metadata" "Partition_filesystem_used_space_percent" {
  description  = "Percentage of used space on the partition filesystem"
  display_name = "Partition filesystem used space percent"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.partition.space.usedpercent"
  unit         = "Percent"
}
