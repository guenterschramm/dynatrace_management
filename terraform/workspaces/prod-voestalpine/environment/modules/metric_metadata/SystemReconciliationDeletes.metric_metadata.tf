resource "dynatrace_metric_metadata" "SystemReconciliationDeletes" {
  display_name = "SystemReconciliationDeletes"
  metric_id    = "metric-cloud.aws.cassandra.SystemReconciliationDeletes.By.Keyspace.TableName"
  unit         = "Count"
}
