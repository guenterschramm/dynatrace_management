resource "dynatrace_metric_metadata" "MemoryUtilization" {
  display_name = "MemoryUtilization"
  metric_id    = "metric-cloud.aws.ecs.MemoryUtilization.By.ClusterName"
  unit         = "Percent"
}
