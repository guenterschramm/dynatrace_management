resource "dynatrace_metric_metadata" "UserErrors_2" {
  display_name = "UserErrors"
  metric_id    = "metric-cloud.aws.cassandra.UserErrors.By.Keyspace.Operation.StreamLabel.TableName"
  unit         = "Count"
}
