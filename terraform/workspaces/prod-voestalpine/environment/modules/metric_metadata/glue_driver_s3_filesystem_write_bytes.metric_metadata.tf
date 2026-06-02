resource "dynatrace_metric_metadata" "glue_driver_s3_filesystem_write_bytes" {
  display_name = "glue.driver.s3.filesystem.write_bytes"
  metric_id    = "metric-cloud.aws.glue.glue.driver.s3.filesystem.write_bytes.By.JobName.JobRunId.Type"
  unit         = "Bytes"
}
