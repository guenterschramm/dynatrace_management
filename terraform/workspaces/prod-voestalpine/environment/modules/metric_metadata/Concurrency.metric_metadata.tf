resource "dynatrace_metric_metadata" "Concurrency" {
  display_name = "Concurrency"
  metric_id    = "metric-cloud.aws.apprunner.Concurrency.By.ServiceID.ServiceName"
  unit         = "Count"
}
