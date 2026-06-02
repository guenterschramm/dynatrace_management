resource "dynatrace_metric_metadata" "StorageCapacityUtilization" {
  display_name = "StorageCapacityUtilization"
  metric_id    = "metric-cloud.aws.fsx.StorageCapacityUtilization.By.FileSystemId.StorageTargetId"
  unit         = "Percent"
}
