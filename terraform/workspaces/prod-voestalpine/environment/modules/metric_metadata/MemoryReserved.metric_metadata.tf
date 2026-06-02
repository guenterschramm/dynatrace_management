resource "dynatrace_metric_metadata" "MemoryReserved" {
  display_name = "MemoryReserved"
  metric_id    = "metric-cloud.aws.ecs_containerinsights.MemoryReserved.By.ClusterName"
  unit         = "Megabytes"
}
