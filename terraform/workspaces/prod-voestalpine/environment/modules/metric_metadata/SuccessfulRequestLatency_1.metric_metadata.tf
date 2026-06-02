resource "dynatrace_metric_metadata" "SuccessfulRequestLatency_1" {
  display_name = "SuccessfulRequestLatency"
  metric_id    = "metric-cloud.aws.cassandra.SuccessfulRequestLatency.By.Keyspace.StreamLabel.TableName"
  unit         = "Milliseconds"
}
