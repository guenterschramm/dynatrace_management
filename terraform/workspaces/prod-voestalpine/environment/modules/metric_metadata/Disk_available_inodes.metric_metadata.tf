resource "dynatrace_metric_metadata" "Disk_available_inodes" {
  description  = "Number of inodes available on the filesystem"
  display_name = "Disk available inodes"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.disk.inodes.available"
  unit         = "Count"
}
