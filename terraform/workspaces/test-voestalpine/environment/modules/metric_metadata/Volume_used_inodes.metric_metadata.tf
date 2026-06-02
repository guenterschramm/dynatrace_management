resource "dynatrace_metric_metadata" "Volume_used_inodes" {
  description  = "Number of inodes used on the filesystem"
  display_name = "Volume used inodes"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.volume.inodes.used"
  unit         = "Count"
}
