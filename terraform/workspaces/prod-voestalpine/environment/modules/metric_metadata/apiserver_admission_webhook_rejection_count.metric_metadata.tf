resource "dynatrace_metric_metadata" "apiserver_admission_webhook_rejection_count" {
  display_name = "apiserver_admission_webhook_rejection_count"
  metric_id    = "metric-cloud.aws.eks.apiserver_admission_webhook_rejection_count.By.ClusterName"
  unit         = "Count"
}
