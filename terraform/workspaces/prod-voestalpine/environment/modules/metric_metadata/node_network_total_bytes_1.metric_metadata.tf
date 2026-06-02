resource "dynatrace_metric_metadata" "node_network_total_bytes_1" {
  display_name = "node_network_total_bytes"
  metric_id    = "metric-cloud.aws.containerinsights.node_network_total_bytes.By.ClusterName.InstanceId.NodeName"
  unit         = "BytePerSecond"
}
