resource "dynatrace_metric_metadata" "IngestionRequestErrors" {
  display_name = "IngestionRequestErrors"
  metric_id    = "metric-cloud.aws.opensearch_serverless.IngestionRequestErrors.By.ClientId.CollectionId.CollectionName"
  unit         = "Count"
}
