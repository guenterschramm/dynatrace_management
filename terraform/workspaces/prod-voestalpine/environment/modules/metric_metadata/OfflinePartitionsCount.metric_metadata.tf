resource "dynatrace_metric_metadata" "OfflinePartitionsCount" {
  display_name = "OfflinePartitionsCount"
  metric_id    = "metric-cloud.aws.kafka.OfflinePartitionsCount.By.Cluster_Name"
  unit         = "Count"
}
