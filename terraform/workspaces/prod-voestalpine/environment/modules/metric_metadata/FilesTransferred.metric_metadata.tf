resource "dynatrace_metric_metadata" "FilesTransferred" {
  display_name = "FilesTransferred"
  metric_id    = "metric-cloud.aws.datasync.FilesTransferred.By.TaskId"
  unit         = "Count"
}
