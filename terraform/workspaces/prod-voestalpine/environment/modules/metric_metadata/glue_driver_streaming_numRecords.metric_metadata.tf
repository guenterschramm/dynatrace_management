resource "dynatrace_metric_metadata" "glue_driver_streaming_numRecords" {
  display_name = "glue.driver.streaming.numRecords"
  metric_id    = "metric-cloud.aws.glue.glue.driver.streaming.numRecords.By.JobName.JobRunId.Type"
  unit         = "Count"
}
