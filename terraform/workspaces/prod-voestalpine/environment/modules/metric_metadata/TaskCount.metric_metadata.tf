resource "dynatrace_metric_metadata" "TaskCount" {
  display_name = "TaskCount"
  metric_id    = "metric-cloud.aws.ecs_containerinsights.TaskCount.By.ClusterName"
  unit         = "Count"
}
