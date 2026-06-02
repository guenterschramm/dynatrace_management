resource "dynatrace_metric_metadata" "FreeDataStorageCapacity" {
  display_name = "FreeDataStorageCapacity"
  metric_id    = "metric-cloud.aws.fsx.FreeDataStorageCapacity.By.FileSystemId.StorageTargetId"
  unit         = "Bytes"
}
