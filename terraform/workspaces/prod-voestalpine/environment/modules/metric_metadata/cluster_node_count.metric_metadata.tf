resource "dynatrace_metric_metadata" "cluster_node_count" {
  display_name = "cluster_node_count"
  metric_id    = "metric-cloud.aws.containerinsights.cluster_node_count.By.ClusterName"
  unit         = "Count"
}
