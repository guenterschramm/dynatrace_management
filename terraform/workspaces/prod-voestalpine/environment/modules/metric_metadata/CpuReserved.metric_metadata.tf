resource "dynatrace_metric_metadata" "CpuReserved" {
  display_name = "CpuReserved"
  metric_id    = "metric-cloud.aws.ecs_containerinsights.CpuReserved.By.ClusterName"
  unit         = "Count"
}
