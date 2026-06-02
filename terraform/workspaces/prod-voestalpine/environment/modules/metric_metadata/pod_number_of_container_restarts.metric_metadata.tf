resource "dynatrace_metric_metadata" "pod_number_of_container_restarts" {
  display_name = "pod_number_of_container_restarts"
  metric_id    = "metric-cloud.aws.containerinsights.pod_number_of_container_restarts.By.ClusterName.Namespace.PodName"
  unit         = "Count"
}
