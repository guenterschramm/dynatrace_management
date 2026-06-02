resource "dynatrace_metric_metadata" "StorageBytes" {
  display_name = "StorageBytes"
  metric_id    = "metric-cloud.aws.efs.StorageBytes.By.FileSystemId"
  unit         = "Bytes"
}
