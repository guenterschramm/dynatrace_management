resource "dynatrace_metric_metadata" "ServiceCount" {
  display_name = "ServiceCount"
  metric_id    = "metric-cloud.aws.ecs_containerinsights.ServiceCount.By.ClusterName"
  unit         = "Count"
}
