resource "dynatrace_metric_metadata" "ReplicationLatency" {
  display_name = "ReplicationLatency"
  metric_id    = "metric-cloud.aws.cassandra.ReplicationLatency.By.Keyspace.ReceivingRegion.TableName"
  unit         = "Milliseconds"
}
