resource "dynatrace_metric_metadata" "Requests_1" {
  display_name = "Requests"
  metric_id    = "metric-cloud.aws.apprunner.Requests.By.ServiceID.ServiceName"
  unit         = "Count"
}
