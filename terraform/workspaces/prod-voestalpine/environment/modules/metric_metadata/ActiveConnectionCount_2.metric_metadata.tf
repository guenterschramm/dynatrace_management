resource "dynatrace_metric_metadata" "ActiveConnectionCount_2" {
  display_name = "ActiveConnectionCount"
  metric_id    = "metric-cloud.aws.ecs.ActiveConnectionCount.By.ClusterName.DiscoveryName.ServiceName"
  unit         = "Count"
}
