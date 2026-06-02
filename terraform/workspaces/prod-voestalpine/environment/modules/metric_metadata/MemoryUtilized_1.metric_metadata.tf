resource "dynatrace_metric_metadata" "MemoryUtilized_1" {
  display_name = "MemoryUtilized"
  metric_id    = "metric-cloud.aws.ecs_containerinsights.MemoryUtilized.By.ClusterName.ServiceName"
  unit         = "Megabytes"
}
