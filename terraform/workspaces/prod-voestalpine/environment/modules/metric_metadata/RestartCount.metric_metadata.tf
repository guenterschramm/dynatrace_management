resource "dynatrace_metric_metadata" "RestartCount" {
  display_name = "RestartCount"
  metric_id    = "metric-cloud.aws.ecs_containerinsights.RestartCount.By.ClusterName"
  unit         = "Count"
}
