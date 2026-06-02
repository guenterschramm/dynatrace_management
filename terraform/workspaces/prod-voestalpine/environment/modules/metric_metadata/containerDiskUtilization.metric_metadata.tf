resource "dynatrace_metric_metadata" "containerDiskUtilization" {
  display_name = "containerDiskUtilization"
  metric_id    = "metric-cloud.aws.flink.containerDiskUtilization.By.Application"
  unit         = "Percent"
}
