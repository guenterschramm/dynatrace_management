resource "dynatrace_metric_metadata" "Volume_capacity_bytes" {
  display_name = "Volume capacity bytes"
  metric_id    = "metric-kubelet_volume_stats_capacity_bytes"
  unit         = "Byte"
}
