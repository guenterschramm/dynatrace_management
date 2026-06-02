resource "dynatrace_metric_metadata" "Partition_available_inodes" {
  description  = "Number of inodes available on the filesystem"
  display_name = "Partition available inodes"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.partition.inodes.available"
  unit         = "Count"
}
