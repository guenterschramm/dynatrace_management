resource "dynatrace_metric_metadata" "ReturnedItemCountBySelect" {
  display_name = "ReturnedItemCountBySelect"
  metric_id    = "metric-cloud.aws.cassandra.ReturnedItemCountBySelect.By.Keyspace.Operation.TableName"
  unit         = "Count"
}
