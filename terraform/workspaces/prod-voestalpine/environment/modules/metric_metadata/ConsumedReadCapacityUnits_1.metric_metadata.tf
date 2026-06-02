resource "dynatrace_metric_metadata" "ConsumedReadCapacityUnits_1" {
  display_name = "ConsumedReadCapacityUnits"
  metric_id    = "metric-cloud.aws.cassandra.ConsumedReadCapacityUnits.By.Keyspace.TableName"
  unit         = "Count"
}
