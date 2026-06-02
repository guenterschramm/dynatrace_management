resource "dynatrace_metric_metadata" "node_filesystem_utilization" {
  display_name = "node_filesystem_utilization"
  metric_id    = "metric-cloud.aws.containerinsights.node_filesystem_utilization.By.ClusterName"
  unit         = "Percent"
}
