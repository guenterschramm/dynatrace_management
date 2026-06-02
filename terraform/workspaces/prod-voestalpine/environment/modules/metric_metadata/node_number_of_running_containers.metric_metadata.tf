resource "dynatrace_metric_metadata" "node_number_of_running_containers" {
  display_name = "node_number_of_running_containers"
  metric_id    = "metric-cloud.aws.containerinsights.node_number_of_running_containers.By.ClusterName"
  unit         = "Count"
}
