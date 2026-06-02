resource "dynatrace_metric_metadata" "BytesCompressed" {
  display_name = "BytesCompressed"
  metric_id    = "metric-cloud.aws.datasync.BytesCompressed.By.TaskId"
  unit         = "Bytes"
}
