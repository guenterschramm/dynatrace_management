resource "dynatrace_metric_metadata" "BillableTableSizeInBytes" {
  display_name = "BillableTableSizeInBytes"
  metric_id    = "metric-cloud.aws.cassandra.BillableTableSizeInBytes.By.Keyspace.TableName"
  unit         = "Bytes"
}
