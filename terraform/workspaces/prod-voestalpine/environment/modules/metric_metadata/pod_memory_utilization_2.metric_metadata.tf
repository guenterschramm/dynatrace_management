resource "dynatrace_metric_metadata" "pod_memory_utilization_2" {
  display_name = "pod_memory_utilization"
  metric_id    = "metric-cloud.aws.containerinsights.pod_memory_utilization.By.ClusterName.Namespace.PodName"
  unit         = "Percent"
}
