resource "dynatrace_metric_metadata" "PerConnectionRequestRateExceeded" {
  display_name = "PerConnectionRequestRateExceeded"
  metric_id    = "metric-cloud.aws.cassandra.PerConnectionRequestRateExceeded.By.Keyspace.Operation.TableName"
  unit         = "Count"
}
