resource "dynatrace_metric_metadata" "SuccessfulRequestLatency_5" {
  display_name = "SuccessfulRequestLatency"
  metric_id    = "metric-cloud.aws.cassandra.SuccessfulRequestLatency.By.Keyspace.Operation.StreamLabel.TableName"
  unit         = "Milliseconds"
}
