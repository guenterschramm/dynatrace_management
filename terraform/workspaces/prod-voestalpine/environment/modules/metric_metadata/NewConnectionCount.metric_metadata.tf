resource "dynatrace_metric_metadata" "NewConnectionCount" {
  display_name = "NewConnectionCount"
  metric_id    = "metric-cloud.aws.ecs.NewConnectionCount.By.ClusterName.DiscoveryName.ServiceName"
  unit         = "Count"
}
