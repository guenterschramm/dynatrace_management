resource "dynatrace_metric_metadata" "EngineExecutionTime" {
  display_name = "EngineExecutionTime"
  metric_id    = "metric-cloud.aws.athena.EngineExecutionTime.By.QueryState.QueryType.WorkGroup"
  unit         = "Milliseconds"
}
