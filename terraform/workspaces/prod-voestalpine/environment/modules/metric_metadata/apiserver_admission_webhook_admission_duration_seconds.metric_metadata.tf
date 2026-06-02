resource "dynatrace_metric_metadata" "apiserver_admission_webhook_admission_duration_seconds" {
  display_name = "apiserver_admission_webhook_admission_duration_seconds"
  metric_id    = "metric-cloud.aws.eks.apiserver_admission_webhook_admission_duration_seconds.By.ClusterName"
  unit         = "Seconds"
}
