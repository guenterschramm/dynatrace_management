resource "dynatrace_metric_metadata" "DPUCount" {
  display_name = "DPUCount"
  metric_id    = "metric-cloud.aws.athena.DPUCount.By.QueryState.QueryType.WorkGroup"
  unit         = "Count"
}
