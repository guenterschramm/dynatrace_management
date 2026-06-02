resource "dynatrace_metric_metadata" "apiserver_request_total_4XX" {
  display_name = "apiserver_request_total_4XX"
  metric_id    = "metric-cloud.aws.eks.apiserver_request_total_4XX.By.ClusterName"
  unit         = "Count"
}
