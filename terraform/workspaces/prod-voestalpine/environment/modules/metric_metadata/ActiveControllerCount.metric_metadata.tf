resource "dynatrace_metric_metadata" "ActiveControllerCount" {
  display_name = "ActiveControllerCount"
  metric_id    = "metric-cloud.aws.kafka.ActiveControllerCount.By.Cluster_Name"
  unit         = "Count"
}
