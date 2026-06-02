resource "dynatrace_metric_metadata" "MemoryUtilization_2" {
  display_name = "MemoryUtilization"
  metric_id    = "metric-cloud.aws.ecs.MemoryUtilization.By.ClusterName.ServiceName"
  unit         = "Percent"
}
