resource "dynatrace_metric_metadata" "glue_driver_streaming_batchProcessingTimeInMs" {
  display_name = "glue.driver.streaming.batchProcessingTimeInMs"
  metric_id    = "metric-cloud.aws.glue.glue.driver.streaming.batchProcessingTimeInMs.By.JobName.JobRunId.Type"
  unit         = "Milliseconds"
}
