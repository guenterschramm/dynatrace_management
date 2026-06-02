resource "dynatrace_metric_metadata" "GlobalPartitionCount" {
  display_name = "GlobalPartitionCount"
  metric_id    = "metric-cloud.aws.kafka.GlobalPartitionCount.By.Cluster_Name"
  unit         = "Count"
}
