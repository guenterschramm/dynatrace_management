resource "dynatrace_metric_metadata" "Volume_total_inodes" {
  description  = "Number of inodes on the filesystem"
  display_name = "Volume total inodes"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.volume.inodes.total"
  unit         = "Count"
}
