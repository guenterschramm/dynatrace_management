resource "dynatrace_metric_metadata" "glue_driver_aggregate_numFailedTasks" {
  display_name = "glue.driver.aggregate.numFailedTasks"
  metric_id    = "metric-cloud.aws.glue.glue.driver.aggregate.numFailedTasks.By.JobName.JobRunId.Type"
  unit         = "Count"
}
