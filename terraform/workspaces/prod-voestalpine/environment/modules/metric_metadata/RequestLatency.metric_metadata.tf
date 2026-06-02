resource "dynatrace_metric_metadata" "RequestLatency" {
  display_name = "RequestLatency"
  metric_id    = "metric-cloud.aws.apprunner.RequestLatency.By.ServiceID.ServiceName"
  unit         = "Milliseconds"
}
