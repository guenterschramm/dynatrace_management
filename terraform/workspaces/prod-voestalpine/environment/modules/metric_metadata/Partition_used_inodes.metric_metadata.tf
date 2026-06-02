resource "dynatrace_metric_metadata" "Partition_used_inodes" {
  description  = "Number of inodes used on the filesystem"
  display_name = "Partition used inodes"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.partition.inodes.used"
  unit         = "Count"
}
