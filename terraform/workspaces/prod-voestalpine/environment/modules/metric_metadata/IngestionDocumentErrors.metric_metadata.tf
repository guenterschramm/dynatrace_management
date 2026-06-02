resource "dynatrace_metric_metadata" "IngestionDocumentErrors" {
  display_name = "IngestionDocumentErrors"
  metric_id    = "metric-cloud.aws.opensearch_serverless.IngestionDocumentErrors.By.ClientId.CollectionId.CollectionName"
  unit         = "Count"
}
