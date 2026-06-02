resource "dynatrace_metric_metadata" "MemoryUtilization_1" {
  display_name = "MemoryUtilization"
  metric_id    = "metric-cloud.aws.apprunner.MemoryUtilization.By.ServiceID.ServiceName"
  unit         = "Percent"
}
