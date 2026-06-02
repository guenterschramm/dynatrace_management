resource "dynatrace_metric_metadata" "glue_ALL_jvm_heap_usage" {
  display_name = "glue.ALL.jvm.heap.usage"
  metric_id    = "metric-cloud.aws.glue.glue.ALL.jvm.heap.usage.By.JobName.JobRunId.Type"
  unit         = "Percentage"
}
