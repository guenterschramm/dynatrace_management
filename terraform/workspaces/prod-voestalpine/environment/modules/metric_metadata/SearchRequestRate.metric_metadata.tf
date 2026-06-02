resource "dynatrace_metric_metadata" "SearchRequestRate" {
  display_name = "SearchRequestRate"
  metric_id    = "metric-cloud.aws.opensearch_serverless.SearchRequestRate.By.ClientId.CollectionId.CollectionName"
  unit         = "Count"
}
