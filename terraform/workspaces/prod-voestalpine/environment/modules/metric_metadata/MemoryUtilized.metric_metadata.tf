resource "dynatrace_metric_metadata" "MemoryUtilized" {
  display_name = "MemoryUtilized"
  metric_id    = "metric-cloud.aws.ecs_containerinsights.MemoryUtilized.By.ClusterName"
  unit         = "Megabytes"
}
