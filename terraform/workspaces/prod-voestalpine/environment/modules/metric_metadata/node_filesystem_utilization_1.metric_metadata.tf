resource "dynatrace_metric_metadata" "node_filesystem_utilization_1" {
  display_name = "node_filesystem_utilization"
  metric_id    = "metric-cloud.aws.containerinsights.node_filesystem_utilization.By.ClusterName.InstanceId.NodeName"
  unit         = "Percent"
}
