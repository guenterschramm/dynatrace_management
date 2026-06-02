resource "dynatrace_metric_metadata" "ReturnedRecordsCount" {
  display_name = "ReturnedRecordsCount"
  metric_id    = "metric-cloud.aws.cassandra.ReturnedRecordsCount.By.Keyspace.StreamLabel.TableName"
  unit         = "Count"
}
