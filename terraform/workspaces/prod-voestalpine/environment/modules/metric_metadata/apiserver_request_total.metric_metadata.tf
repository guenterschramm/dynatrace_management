resource "dynatrace_metric_metadata" "apiserver_request_total" {
  display_name = "apiserver_request_total"
  metric_id    = "metric-cloud.aws.eks.apiserver_request_total.By.ClusterName"
  unit         = "Count"
}
