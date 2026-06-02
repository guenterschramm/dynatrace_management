resource "dynatrace_metric_metadata" "Partition_available_inodes_percent" {
  description  = "Percentage of inodes available on the filesystem"
  display_name = "Partition available inodes percent"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.partition.inodes.availablepercent"
  unit         = "Percent"
}
