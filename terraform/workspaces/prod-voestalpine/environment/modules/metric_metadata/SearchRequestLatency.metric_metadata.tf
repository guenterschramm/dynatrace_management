resource "dynatrace_metric_metadata" "SearchRequestLatency" {
  display_name = "SearchRequestLatency"
  metric_id    = "metric-cloud.aws.opensearch_serverless.SearchRequestLatency.By.ClientId.CollectionId.CollectionName"
  unit         = "Milliseconds"
}
