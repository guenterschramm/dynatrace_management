resource "dynatrace_metric_metadata" "pod_gpu_usage_total_1" {
  display_name = "pod_gpu_usage_total"
  metric_id    = "metric-cloud.aws.containerinsights.pod_gpu_usage_total.By.ClusterName.Namespace.PodName"
  unit         = "Count"
}
