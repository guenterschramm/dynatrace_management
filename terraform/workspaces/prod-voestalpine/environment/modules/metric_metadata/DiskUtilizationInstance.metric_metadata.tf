resource "dynatrace_metric_metadata" "DiskUtilizationInstance" {
  display_name = "DiskUtilizationInstance"
  metric_id    = "metric-cloud.aws.appstreams.DiskUtilizationInstance.By.Fleet"
  unit         = "Percent"
}
