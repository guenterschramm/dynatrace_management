resource "dynatrace_metric_metadata" "FilesVerified" {
  display_name = "FilesVerified"
  metric_id    = "metric-cloud.aws.datasync.FilesVerified.By.TaskId"
  unit         = "Count"
}
