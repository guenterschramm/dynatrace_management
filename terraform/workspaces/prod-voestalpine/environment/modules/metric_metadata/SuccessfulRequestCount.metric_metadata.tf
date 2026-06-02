resource "dynatrace_metric_metadata" "SuccessfulRequestCount" {
  display_name = "SuccessfulRequestCount"
  metric_id    = "metric-cloud.aws.cassandra.SuccessfulRequestCount.By.Keyspace.Operation"
  unit         = "Count"
}
