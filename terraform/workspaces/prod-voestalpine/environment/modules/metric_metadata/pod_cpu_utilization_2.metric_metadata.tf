resource "dynatrace_metric_metadata" "pod_cpu_utilization_2" {
  display_name = "pod_cpu_utilization"
  metric_id    = "metric-cloud.aws.containerinsights.pod_cpu_utilization.By.ClusterName.Namespace.PodName"
  unit         = "Percent"
}
