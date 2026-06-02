resource "dynatrace_metric_metadata" "ConsumedWriteCapacityUnits_1" {
  display_name = "ConsumedWriteCapacityUnits"
  metric_id    = "metric-cloud.aws.cassandra.ConsumedWriteCapacityUnits.By.Keyspace.TableName"
  unit         = "Count"
}
