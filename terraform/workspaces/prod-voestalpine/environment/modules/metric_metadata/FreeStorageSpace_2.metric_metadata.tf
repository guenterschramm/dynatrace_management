resource "dynatrace_metric_metadata" "FreeStorageSpace_2" {
  display_name = "FreeStorageSpace"
  metric_id    = "metric-cloud.aws.dms.FreeStorageSpace.By.ReplicationInstanceIdentifier.ReplicationTaskIdentifier"
  unit         = "Bytes"
}
