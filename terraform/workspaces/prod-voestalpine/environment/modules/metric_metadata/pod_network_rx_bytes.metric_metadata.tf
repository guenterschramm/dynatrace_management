resource "dynatrace_metric_metadata" "pod_network_rx_bytes" {
  display_name = "pod_network_rx_bytes"
  metric_id    = "metric-cloud.aws.containerinsights.pod_network_rx_bytes.By.ClusterName"
  unit         = "BytePerSecond"
}
