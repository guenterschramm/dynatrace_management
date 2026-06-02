resource "dynatrace_metric_metadata" "containerCPUUtilization" {
  display_name = "containerCPUUtilization"
  metric_id    = "metric-cloud.aws.flink.containerCPUUtilization.By.Application"
  unit         = "Percent"
}
