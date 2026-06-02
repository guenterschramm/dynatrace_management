resource "dynatrace_metric_metadata" "UsedStorageCapacity" {
  display_name = "UsedStorageCapacity"
  metric_id    = "metric-cloud.aws.fsx.UsedStorageCapacity.By.FileSystemId"
  unit         = "Bytes"
}
