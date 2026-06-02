resource "dynatrace_metric_metadata" "UnderMinIsrPartitionCount" {
  display_name = "UnderMinIsrPartitionCount"
  metric_id    = "metric-cloud.aws.kafka.UnderMinIsrPartitionCount.By.Broker_ID.Cluster_Name"
  unit         = "Count"
}
