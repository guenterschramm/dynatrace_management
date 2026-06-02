resource "dynatrace_metric_metadata" "Volume_used_bytes" {
  display_name = "Volume used bytes"
  metric_id    = "metric-kubelet_volume_stats_used_bytes"
  unit         = "Byte"
}
