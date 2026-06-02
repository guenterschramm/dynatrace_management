resource "dynatrace_metric_metadata" "UserPartitionExists" {
  display_name = "UserPartitionExists"
  metric_id    = "metric-cloud.aws.kafka.UserPartitionExists.By.Broker_ID.Cluster_Name"
  unit         = "Count"
}
