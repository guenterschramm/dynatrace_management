resource "dynatrace_metric_metadata" "Disk_total_inodes" {
  description  = "Number of inodes on the filesystem."
  display_name = "Disk total inodes"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.disk.inodes.total"
  unit         = "Count"
}
