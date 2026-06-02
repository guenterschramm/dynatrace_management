resource "dynatrace_metric_metadata" "RequestCount_3" {
  display_name = "RequestCount"
  metric_id    = "metric-cloud.aws.ecs.RequestCount.By.ClusterName.DiscoveryName.ServiceName"
  unit         = "Count"
}
