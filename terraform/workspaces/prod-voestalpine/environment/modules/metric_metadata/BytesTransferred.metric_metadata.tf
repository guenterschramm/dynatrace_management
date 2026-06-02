resource "dynatrace_metric_metadata" "BytesTransferred" {
  display_name = "BytesTransferred"
  metric_id    = "metric-cloud.aws.datasync.BytesTransferred.By.TaskId"
  unit         = "Bytes"
}
