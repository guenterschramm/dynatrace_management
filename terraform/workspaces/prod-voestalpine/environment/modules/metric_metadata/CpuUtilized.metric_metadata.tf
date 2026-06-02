resource "dynatrace_metric_metadata" "CpuUtilized" {
  display_name = "CpuUtilized"
  metric_id    = "metric-cloud.aws.ecs_containerinsights.CpuUtilized.By.ClusterName"
  unit         = "Count"
}
