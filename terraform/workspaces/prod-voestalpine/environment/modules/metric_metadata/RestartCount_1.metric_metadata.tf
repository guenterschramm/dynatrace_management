resource "dynatrace_metric_metadata" "RestartCount_1" {
  display_name = "RestartCount"
  metric_id    = "metric-cloud.aws.ecs_containerinsights.RestartCount.By.ClusterName.ServiceName"
  unit         = "Count"
}
