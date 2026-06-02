resource "dynatrace_metric_metadata" "node_network_total_bytes" {
  display_name = "node_network_total_bytes"
  metric_id    = "metric-cloud.aws.containerinsights.node_network_total_bytes.By.ClusterName"
  unit         = "BytePerSecond"
}
