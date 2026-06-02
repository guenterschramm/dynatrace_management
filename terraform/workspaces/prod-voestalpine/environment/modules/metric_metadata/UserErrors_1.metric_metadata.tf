resource "dynatrace_metric_metadata" "UserErrors_1" {
  display_name = "UserErrors"
  metric_id    = "metric-cloud.aws.cassandra.UserErrors.By.Keyspace.StreamLabel.TableName"
  unit         = "Count"
}
