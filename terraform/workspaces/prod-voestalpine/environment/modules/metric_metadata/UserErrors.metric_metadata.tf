resource "dynatrace_metric_metadata" "UserErrors" {
  display_name = "UserErrors"
  metric_id    = "metric-cloud.aws.cassandra.UserErrors.By.Keyspace.Operation.TableName"
  unit         = "Count"
}
