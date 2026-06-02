resource "dynatrace_metric_metadata" "MemoryUsage" {
  display_name = "MemoryUsage"
  metric_id    = "metric-cloud.aws.dms.MemoryUsage.By.ReplicationInstanceIdentifier.ReplicationTaskIdentifier"
  unit         = "Megabytes"
}
