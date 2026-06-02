resource "dynatrace_metric_metadata" "node_memory_utilization_1" {
  display_name = "node_memory_utilization"
  metric_id    = "metric-cloud.aws.containerinsights.node_memory_utilization.By.ClusterName.InstanceId.NodeName"
  unit         = "Percent"
}
