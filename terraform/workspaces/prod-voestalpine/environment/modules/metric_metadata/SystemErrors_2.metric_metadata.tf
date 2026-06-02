resource "dynatrace_metric_metadata" "SystemErrors_2" {
  display_name = "SystemErrors"
  metric_id    = "metric-cloud.aws.cassandra.SystemErrors.By.Keyspace.Operation.TableName"
  unit         = "Count"
}
