resource "dynatrace_metric_metadata" "NetworkRxBytes_1" {
  display_name = "NetworkRxBytes"
  metric_id    = "metric-cloud.aws.ecs_containerinsights.NetworkRxBytes.By.ClusterName.ServiceName"
  unit         = "Bytes/Second"
}
