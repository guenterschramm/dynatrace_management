resource "dynatrace_metric_metadata" "CpuUtilizationInstance" {
  display_name = "CpuUtilizationInstance"
  metric_id    = "metric-cloud.aws.appstreams.CpuUtilizationInstance.By.Fleet"
  unit         = "Percent"
}
