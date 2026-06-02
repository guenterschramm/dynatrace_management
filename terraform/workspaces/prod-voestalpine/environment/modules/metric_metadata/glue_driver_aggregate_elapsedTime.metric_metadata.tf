resource "dynatrace_metric_metadata" "glue_driver_aggregate_elapsedTime" {
  display_name = "glue.driver.aggregate.elapsedTime"
  metric_id    = "metric-cloud.aws.glue.glue.driver.aggregate.elapsedTime.By.JobName.JobRunId.Type"
  unit         = "Milliseconds"
}
