resource "dynatrace_metric_metadata" "StoragePartitionThroughputCapacityExceeded" {
  display_name = "StoragePartitionThroughputCapacityExceeded"
  metric_id    = "metric-cloud.aws.cassandra.StoragePartitionThroughputCapacityExceeded.By.Keyspace.Operation.TableName"
  unit         = "Count"
}
