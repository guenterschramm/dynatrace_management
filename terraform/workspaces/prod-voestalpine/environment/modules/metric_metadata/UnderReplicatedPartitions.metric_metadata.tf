resource "dynatrace_metric_metadata" "UnderReplicatedPartitions" {
  display_name = "UnderReplicatedPartitions"
  metric_id    = "metric-cloud.aws.kafka.UnderReplicatedPartitions.By.Broker_ID.Cluster_Name"
  unit         = "Count"
}
