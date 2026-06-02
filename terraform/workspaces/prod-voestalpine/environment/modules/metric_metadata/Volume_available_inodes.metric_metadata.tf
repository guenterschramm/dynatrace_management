resource "dynatrace_metric_metadata" "Volume_available_inodes" {
  description  = "Number of inodes available on the filesystem"
  display_name = "Volume available inodes"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.volume.inodes.available"
  unit         = "Count"
}
