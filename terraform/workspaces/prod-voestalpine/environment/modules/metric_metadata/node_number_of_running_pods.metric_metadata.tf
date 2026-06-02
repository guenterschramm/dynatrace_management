resource "dynatrace_metric_metadata" "node_number_of_running_pods" {
  display_name = "node_number_of_running_pods"
  metric_id    = "metric-cloud.aws.containerinsights.node_number_of_running_pods.By.ClusterName"
  unit         = "Count"
}
