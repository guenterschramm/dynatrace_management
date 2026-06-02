resource "dynatrace_metric_metadata" "TTLDeletes" {
  display_name = "TTLDeletes"
  metric_id    = "metric-cloud.aws.cassandra.TTLDeletes.By.Keyspace.TableName"
  unit         = "Count"
}
