resource "dynatrace_metric_metadata" "StorageCapacity" {
  display_name = "StorageCapacity"
  metric_id    = "metric-cloud.aws.fsx.StorageCapacity.By.FileSystemId"
  unit         = "Bytes"
}
