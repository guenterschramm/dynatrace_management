resource "dynatrace_metric_metadata" "Volume_available_bytes" {
  display_name = "Volume available bytes"
  metric_id    = "metric-kubelet_volume_stats_available_bytes"
  unit         = "Byte"
}
