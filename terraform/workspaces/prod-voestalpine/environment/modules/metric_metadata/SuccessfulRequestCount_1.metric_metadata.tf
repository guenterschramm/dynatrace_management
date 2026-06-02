resource "dynatrace_metric_metadata" "SuccessfulRequestCount_1" {
  display_name = "SuccessfulRequestCount"
  metric_id    = "metric-cloud.aws.cassandra.SuccessfulRequestCount.By.Keyspace.Operation.TableName"
  unit         = "Count"
}
