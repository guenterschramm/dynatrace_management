resource "dynatrace_metric_metadata" "RunningTaskCount_1" {
  display_name = "RunningTaskCount"
  metric_id    = "metric-cloud.aws.ecs_containerinsights.RunningTaskCount.By.ClusterName.ServiceName"
  unit         = "Count"
}
