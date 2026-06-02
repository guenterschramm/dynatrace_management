resource "dynatrace_metric_metadata" "Partition_total_inodes" {
  description  = "Number of inodes on the filesystem"
  display_name = "Partition total inodes"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.partition.inodes.total"
  unit         = "Count"
}
