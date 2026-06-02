resource "dynatrace_metric_metadata" "NetworkRxBytes" {
  display_name = "NetworkRxBytes"
  metric_id    = "metric-cloud.aws.ecs_containerinsights.NetworkRxBytes.By.ClusterName"
  unit         = "Bytes/Second"
}
