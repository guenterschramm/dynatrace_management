resource "dynatrace_metric_metadata" "node_cpu_utilization" {
  display_name = "node_cpu_utilization"
  metric_id    = "metric-cloud.aws.containerinsights.node_cpu_utilization.By.ClusterName"
  unit         = "Percent"
}
