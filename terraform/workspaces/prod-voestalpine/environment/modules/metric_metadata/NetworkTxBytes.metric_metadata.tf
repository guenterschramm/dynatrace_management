resource "dynatrace_metric_metadata" "NetworkTxBytes" {
  display_name = "NetworkTxBytes"
  metric_id    = "metric-cloud.aws.ecs_containerinsights.NetworkTxBytes.By.ClusterName"
  unit         = "Bytes/Second"
}
