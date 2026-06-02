resource "dynatrace_metric_metadata" "glue_driver_aggregate_bytesRead" {
  display_name = "glue.driver.aggregate.bytesRead"
  metric_id    = "metric-cloud.aws.glue.glue.driver.aggregate.bytesRead.By.JobName.JobRunId.Type"
  unit         = "Bytes"
}
