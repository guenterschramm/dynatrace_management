resource "dynatrace_metric_metadata" "ActiveInstances" {
  display_name = "ActiveInstances"
  metric_id    = "metric-cloud.aws.apprunner.ActiveInstances.By.ServiceID.ServiceName"
  unit         = "Count"
}
