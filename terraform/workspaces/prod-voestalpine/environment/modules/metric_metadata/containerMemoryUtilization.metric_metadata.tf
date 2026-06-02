resource "dynatrace_metric_metadata" "containerMemoryUtilization" {
  display_name = "containerMemoryUtilization"
  metric_id    = "metric-cloud.aws.flink.containerMemoryUtilization.By.Application"
  unit         = "Percent"
}
