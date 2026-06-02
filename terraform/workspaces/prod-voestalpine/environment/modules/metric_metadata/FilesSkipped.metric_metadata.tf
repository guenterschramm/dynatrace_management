resource "dynatrace_metric_metadata" "FilesSkipped" {
  display_name = "FilesSkipped"
  metric_id    = "metric-cloud.aws.datasync.FilesSkipped.By.TaskId"
  unit         = "Count"
}
