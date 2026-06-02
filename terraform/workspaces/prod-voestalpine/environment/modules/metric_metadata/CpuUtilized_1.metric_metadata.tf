resource "dynatrace_metric_metadata" "CpuUtilized_1" {
  display_name = "CpuUtilized"
  metric_id    = "metric-cloud.aws.ecs_containerinsights.CpuUtilized.By.ClusterName.ServiceName"
  unit         = "Count"
}
