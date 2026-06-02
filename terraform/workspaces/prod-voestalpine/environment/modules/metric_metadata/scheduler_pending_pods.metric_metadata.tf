resource "dynatrace_metric_metadata" "scheduler_pending_pods" {
  display_name = "scheduler_pending_pods"
  metric_id    = "metric-cloud.aws.eks.scheduler_pending_pods.By.ClusterName"
  unit         = "Count"
}
