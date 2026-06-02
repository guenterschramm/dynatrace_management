resource "dynatrace_metric_metadata" "MemoryUtilizationInstance" {
  display_name = "MemoryUtilizationInstance"
  metric_id    = "metric-cloud.aws.appstreams.MemoryUtilizationInstance.By.Fleet"
  unit         = "Percent"
}
