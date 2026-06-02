resource "dynatrace_metric_metadata" "QueryQueueTime" {
  display_name = "QueryQueueTime"
  metric_id    = "metric-cloud.aws.athena.QueryQueueTime.By.QueryState.QueryType.WorkGroup"
  unit         = "Milliseconds"
}
