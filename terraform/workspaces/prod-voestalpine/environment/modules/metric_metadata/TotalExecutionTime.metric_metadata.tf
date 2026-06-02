resource "dynatrace_metric_metadata" "TotalExecutionTime" {
  display_name = "TotalExecutionTime"
  metric_id    = "metric-cloud.aws.athena.TotalExecutionTime.By.QueryState.QueryType.WorkGroup"
  unit         = "Milliseconds"
}
