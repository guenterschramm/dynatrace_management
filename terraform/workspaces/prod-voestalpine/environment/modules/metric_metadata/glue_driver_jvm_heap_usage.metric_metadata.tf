resource "dynatrace_metric_metadata" "glue_driver_jvm_heap_usage" {
  display_name = "glue.driver.jvm.heap.usage"
  metric_id    = "metric-cloud.aws.glue.glue.driver.jvm.heap.usage.By.JobName.JobRunId.Type"
  unit         = "Percentage"
}
