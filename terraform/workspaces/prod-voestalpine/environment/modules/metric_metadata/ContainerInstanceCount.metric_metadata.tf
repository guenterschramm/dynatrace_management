resource "dynatrace_metric_metadata" "ContainerInstanceCount" {
  display_name = "ContainerInstanceCount"
  metric_id    = "metric-cloud.aws.ecs_containerinsights.ContainerInstanceCount.By.ClusterName"
  unit         = "Count"
}
