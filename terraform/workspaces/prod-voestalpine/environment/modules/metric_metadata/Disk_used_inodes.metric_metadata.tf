resource "dynatrace_metric_metadata" "Disk_used_inodes" {
  description  = "Number of inodes used on the filesystem"
  display_name = "Disk used inodes"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.disk.inodes.used"
  unit         = "Count"
}
