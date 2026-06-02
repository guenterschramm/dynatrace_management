resource "dynatrace_metric_metadata" "glue_ALL_s3_filesystem_read_bytes" {
  display_name = "glue.ALL.s3.filesystem.read_bytes"
  metric_id    = "metric-cloud.aws.glue.glue.ALL.s3.filesystem.read_bytes.By.JobName.JobRunId.Type"
  unit         = "Bytes"
}
