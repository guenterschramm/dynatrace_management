resource "dynatrace_metric_metadata" "apiserver_admission_webhook_request_total" {
  display_name = "apiserver_admission_webhook_request_total"
  metric_id    = "metric-cloud.aws.eks.apiserver_admission_webhook_request_total.By.ClusterName"
  unit         = "Count"
}
