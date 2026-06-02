resource "dynatrace_metric_metadata" "SearchRequestErrors" {
  display_name = "SearchRequestErrors"
  metric_id    = "metric-cloud.aws.opensearch_serverless.SearchRequestErrors.By.ClientId.CollectionId.CollectionName"
  unit         = "Count"
}
