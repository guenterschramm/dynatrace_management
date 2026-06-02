resource "dynatrace_metric_metadata" "Partition_used_inodes_percent" {
  description  = "Percentage of inodes used on the filesystem"
  display_name = "Partition used inodes percent"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.partition.inodes.usedpercent"
  unit         = "Percent"
}
