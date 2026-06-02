resource "dynatrace_metric_metadata" "PartitionCount" {
  display_name = "PartitionCount"
  metric_id    = "metric-cloud.aws.kafka.PartitionCount.By.Broker_ID.Cluster_Name"
  unit         = "Count"
}
