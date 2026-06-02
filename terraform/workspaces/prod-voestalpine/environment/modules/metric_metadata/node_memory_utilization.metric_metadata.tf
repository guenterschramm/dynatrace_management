resource "dynatrace_metric_metadata" "node_memory_utilization" {
  display_name = "node_memory_utilization"
  metric_id    = "metric-cloud.aws.containerinsights.node_memory_utilization.By.ClusterName"
  unit         = "Percent"
}
