resource "dynatrace_metric_metadata" "heapMemoryUtilization" {
  display_name = "heapMemoryUtilization"
  metric_id    = "metric-cloud.aws.flink.heapMemoryUtilization.By.Application"
  unit         = "Percent"
}
