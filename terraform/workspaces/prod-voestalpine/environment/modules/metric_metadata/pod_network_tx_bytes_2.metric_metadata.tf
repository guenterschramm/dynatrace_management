resource "dynatrace_metric_metadata" "pod_network_tx_bytes_2" {
  display_name = "pod_network_tx_bytes"
  metric_id    = "metric-cloud.aws.containerinsights.pod_network_tx_bytes.By.ClusterName.Namespace.Service"
  unit         = "BytePerSecond"
}
