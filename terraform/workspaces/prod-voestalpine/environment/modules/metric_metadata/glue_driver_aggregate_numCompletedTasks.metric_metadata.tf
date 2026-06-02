resource "dynatrace_metric_metadata" "glue_driver_aggregate_numCompletedTasks" {
  display_name = "glue.driver.aggregate.numCompletedTasks"
  metric_id    = "metric-cloud.aws.glue.glue.driver.aggregate.numCompletedTasks.By.JobName.JobRunId.Type"
  unit         = "Count"
}
