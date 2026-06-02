resource "dynatrace_metric_metadata" "apiserver_request_total_5XX" {
  display_name = "apiserver_request_total_5XX"
  metric_id    = "metric-cloud.aws.eks.apiserver_request_total_5XX.By.ClusterName"
  unit         = "Count"
}
