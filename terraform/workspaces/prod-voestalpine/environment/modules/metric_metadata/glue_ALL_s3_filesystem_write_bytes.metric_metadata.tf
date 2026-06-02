resource "dynatrace_metric_metadata" "glue_ALL_s3_filesystem_write_bytes" {
  display_name = "glue.ALL.s3.filesystem.write_bytes"
  metric_id    = "metric-cloud.aws.glue.glue.ALL.s3.filesystem.write_bytes.By.JobName.JobRunId.Type"
  unit         = "Bytes"
}
