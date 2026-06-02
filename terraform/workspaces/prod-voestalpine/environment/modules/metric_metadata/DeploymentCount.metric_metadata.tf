resource "dynatrace_metric_metadata" "DeploymentCount" {
  display_name = "DeploymentCount"
  metric_id    = "metric-cloud.aws.ecs_containerinsights.DeploymentCount.By.ClusterName.ServiceName"
  unit         = "Count"
}
