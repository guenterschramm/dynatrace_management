resource "dynatrace_metric_metadata" "MemoryReserved_1" {
  display_name = "MemoryReserved"
  metric_id    = "metric-cloud.aws.ecs_containerinsights.MemoryReserved.By.ClusterName.ServiceName"
  unit         = "Megabytes"
}
