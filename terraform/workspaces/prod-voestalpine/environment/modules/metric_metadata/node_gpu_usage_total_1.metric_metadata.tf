resource "dynatrace_metric_metadata" "node_gpu_usage_total_1" {
  display_name = "node_gpu_usage_total"
  metric_id    = "metric-cloud.aws.containerinsights.node_gpu_usage_total.By.ClusterName.InstanceId.NodeName"
  unit         = "Count"
}
