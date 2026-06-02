resource "dynatrace_metric_metadata" "FilesDeleted" {
  display_name = "FilesDeleted"
  metric_id    = "metric-cloud.aws.datasync.FilesDeleted.By.TaskId"
  unit         = "Count"
}
