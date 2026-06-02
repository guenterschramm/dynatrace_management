resource "dynatrace_metric_metadata" "CpuReserved_1" {
  display_name = "CpuReserved"
  metric_id    = "metric-cloud.aws.ecs_containerinsights.CpuReserved.By.ClusterName.ServiceName"
  unit         = "Count"
}
