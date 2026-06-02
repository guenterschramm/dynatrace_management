resource "dynatrace_metric_metadata" "node_number_of_running_pods_1" {
  display_name = "node_number_of_running_pods"
  metric_id    = "metric-cloud.aws.containerinsights.node_number_of_running_pods.By.ClusterName.InstanceId.NodeName"
  unit         = "Count"
}
