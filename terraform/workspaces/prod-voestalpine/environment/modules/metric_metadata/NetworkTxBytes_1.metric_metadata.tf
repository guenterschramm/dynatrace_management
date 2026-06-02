resource "dynatrace_metric_metadata" "NetworkTxBytes_1" {
  display_name = "NetworkTxBytes"
  metric_id    = "metric-cloud.aws.ecs_containerinsights.NetworkTxBytes.By.ClusterName.ServiceName"
  unit         = "Bytes/Second"
}
